// write method in abstract class first then override do a logic in implementation class
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vt_simple_app/data/sample.dart';
import 'package:vt_simple_app/provider/client_provider.dart';

final sampleRepoProvider =
    Provider<SampleRepository>((ref) => SampleRepository(ref.read));

abstract class ISampleRepository {
  Future<Sample> getCatFact();
}

class SampleRepository implements ISampleRepository {
  final Reader read;
  SampleRepository(this.read);

  @override
  Future<Sample> getCatFact() async {
    try {
      final response = await read(clientProvider).get('/fact');
      return Sample.fromJson(response.data);
    } on DioError catch (error) {
      throw Exception();
    }
  }
}
