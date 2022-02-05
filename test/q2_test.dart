import "package:test/test.dart";
import "package:dart_live_coding/q2.dart";

void main() {
  void tester(int n, List<List<int>> exp) => test("Testing for $n", () => expect(pyramid(n), equals(exp)));
  group('basic tests', () {
    tester(0, []);
    tester(1, [[1]]);
    tester(2, [[1], [1, 1]]);
    tester(3, [[1], [1, 1], [1, 1, 1]]);
  });
}