import 'package:dart_live_coding/q8.dart';
import "package:test/test.dart";

void main() {
  testequal(int n, int exp) => 
    test("Testing for $n", () => 
      expect(thirt(n), equals(exp)));
  group("fixed tests", () {
    testequal(8529, 79);
    testequal(85299258, 31);
    testequal(5634, 57);
    
  });
}
