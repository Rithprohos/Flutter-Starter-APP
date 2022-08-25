import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@freezed
abstract class Sample with _$Sample {
  const Sample._();

  const factory Sample(
    String fact,
    int length,
  ) = _Sample;

  factory Sample.fromJson(Map<String, Object?> json) => _$SampleFromJson(json);
}
