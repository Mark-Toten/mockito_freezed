import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_freezed/example.dart';

import 'FOUT example_test.mocks.dart';

@GenerateNiceMocks(<MockSpec<dynamic>>[
  MockSpec<Example>(),
])
void main() {
  test('should return "hello" for id', () {
    //arrange
    final Example example = MockExample();
    const String expected = 'hello?';
    when(example.id).thenReturn(expected);
    //act
    final String result = example.id;
    //assert
    expect(result, expected);
  });
}
