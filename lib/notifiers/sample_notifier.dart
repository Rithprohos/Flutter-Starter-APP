import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vt_simple_app/data/sample.dart';
import 'package:vt_simple_app/repository/sample_api_repo.dart';

final sampleProvider = FutureProvider.autoDispose<Sample>((ref) async {
  // cancel http request if the user leave the page before
  // request complete

  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  Sample sample = await ref.read(sampleRepoProvider).getCatFact();

  // cache the model once it successfully obtained;
  ref.maintainState = true;
  return sample;
});
