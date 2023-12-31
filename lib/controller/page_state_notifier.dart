import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/controller/page_state.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';

import 'dart:developer' as dev;

class PageStateNotifier<T> extends StateNotifier<PageState<T>> {
  PageStateNotifier({required this.fetchNext, this.pageNumber = 0, this.maxPageNumber = 3})
      : super(const PageState.loading());

  final Future<ApiResponse<BaseListResult<T>>> Function(int pageNumber) fetchNext;
  int pageNumber;
  int maxPageNumber;

  bool _fetchingNextPage = false;
  bool _reachMaxPage = false;

  final List<T> _items = [];

  T getRandom() {
    return _items.elementAt(Random().nextInt(_items.length - 1));
  }

  void updateState(ApiResponse<BaseListResult<T>> result,
          {bool isSubsequentCalled = false}) =>
      switch (result) {
        ApiResponseSuccess(:final data) => {
          // If maxPageNumber is negative value, use the total_pages number return from API to check reach end
          if(maxPageNumber.isNegative){
            _reachMaxPage = (result.data.page == result.data.totalPages)
          }else{
            _reachMaxPage = (result.data.page == maxPageNumber)
          },
          pageNumber = result.data.page,
          if (data.results.isEmpty){
            state = PageState.data(_items, _reachMaxPage)
          }
          else {
            state = PageState.data(_items..addAll(data.results), _reachMaxPage)
          },
        },
        ApiResponseError(
            :final code,
            :final message,
            :final referenceId
        ) ||
        ApiResponseClientError(
          :final code,
          :final message,
          :final referenceId
        ) ||
        ApiResponseServerError(
          :final code,
          :final message,
          :final referenceId
        ) =>
          {
            if(isSubsequentCalled){
              state =  PageState.onSubsequentError(_items, message, code)
            }else{
              state = PageState.error(message, code)
            }
          },
      };

  void inti() {
    if (_items.isEmpty) {
      fetchFirstPage();
    }
  }

  Future<void> fetchFirstPage() async {
    try {
      state = const PageState.loading();
      final ApiResponse<BaseListResult<T>> result = await fetchNext(pageNumber + 1);
      updateState(result);
    } catch (err, stacktrace) {
      state = PageState.error(err.toString(), null);
    }
  }

  Future<void> fetchNextPage() async {
    if (_fetchingNextPage) {
      return;
    }
    if(_reachMaxPage){
      return;
    }
    state = PageState.onSubsequentLoad(_items);
    try {
      _fetchingNextPage = true;
      final ApiResponse<BaseListResult<T>> result = await fetchNext(pageNumber + 1);
      updateState(result, isSubsequentCalled: true);
    } catch (err, stacktrace) {
      state = PageState.onSubsequentError(_items, err.toString(), null);
    } finally {
      _fetchingNextPage = false;
    }
  }
}
