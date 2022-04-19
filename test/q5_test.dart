import "package:test/test.dart";
import "package:dart_live_coding/q5.dart";

// [TestCase("four", "zero nine five two")]
//         [TestCase("three", "four six two three")]
//         [TestCase("three", "one two three four five")]
//         [TestCase("four", "five four")]
//         [TestCase("zero", "zero zero zero zero zero")]
//         [TestCase("two", "one one eight one")]
//         [TestCase("n/a", "")]
//         [TestCase("n/a", "twenty")]
//         [TestCase("n/a", "fivefour two")]
void main() {
  group("Fixed tests", () {
    test('0952', () {
      expect("four", computed("zero nine five two"));
    });

    test('4623', () {
      expect("three", computed("four six two three"));
    });

    test('12345', () {
      expect("three", computed("one two three four five"));
    });

    test('45', () {
      expect("four", computed("four five"));
    });
    test('00', () {
      expect("zero", computed("zero zero"));
    });

    test('empty', () {
      expect("n/a", computed(""));
    });

    test('not in ten', () {
      expect("n/a", computed("twenty"));
    });

    test('not in ten1', () {
      expect("n/a", computed("fivefour two"));
    });
  });
}
