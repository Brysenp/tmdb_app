import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:net_flix/core/controller/load_state.dart';
import 'package:net_flix/core/models/api_response.dart';

import 'dart:developer' as dev;

/// Generic State Notifier to call an API that does not required any further processing
class LoadStateNotifier<T> extends StateNotifier<LoadState<T>>{
  LoadStateNotifier({required this.callAPI})
      : super(const LoadState.loading());

  final Future<ApiResponse<T>> Function() callAPI;

  bool _fetching = false;

  void init() async {
    fetchData();
  }

  void refresh() async {
    state = const LoadState.loading();
    fetchData();
  }

  Future<void> fetchData() async {
    if(_fetching){
      return;
    }
    try{
      _fetching = true;
      final ApiResponse<T> result = await callAPI();
      () => switch(result){
        ApiResponseSuccess(:final data) => {
          state = LoadState.data(data)
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
        ) => {
          state = LoadState.error(message, code)
        }
      };
    }catch(error, stacktrace){
      state = LoadState.error(error.toString(), null);
    }finally{
      _fetching = false;
    }
  }
}