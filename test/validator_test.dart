library validator_test;

import 'package:unittest/unittest.dart';
import 'package:validator/validator.dart' as v;

void testEquals() {
  group('Test equals', () {
    test('empty strings', () => expect(v.equals('', ''), true));
    test('first empty string', () => expect(v.equals('', 'hello'), false));
    test('second empty string', () => expect(v.equals('hello', ''), false));
    test('equal strings', () => expect(v.equals('hello', 'hello'), true));
    test('case sensitive', () => expect(v.equals('hello', 'Hello'), false));
  });
}

void main() {
  testEquals();
}