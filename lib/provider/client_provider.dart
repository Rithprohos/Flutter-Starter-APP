import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider((ref) {
  // do some data read here if have api key, token....
  return Dio(BaseOptions(baseUrl: 'https://catfact.ninja/'));
});
