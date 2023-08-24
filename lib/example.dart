import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';

@freezed
class Example with _$Example {
  const factory Example(
    String id,
  ) = _Example;

  const Example._();
}
