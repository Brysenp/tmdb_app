import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

final dioProvider = Provider<Dio>((ref) => Dio(
      BaseOptions(
          baseUrl: ref.read(baseUrlProvider),
          contentType: 'application/json',
          connectTimeout: const Duration(seconds: 30)
      ),
    ));
final uuidProvider =
    Provider<Uuid>((ref) => Uuid(goptions: GlobalOptions(CryptoRNG())));
final movieImageBaseUrlProvider =
    Provider<String>((ref) => 'https://image.tmdb.org/t/p/w500/');
final baseUrlProvider = StateProvider((ref) => 'https://api.themoviedb.org/3/');
