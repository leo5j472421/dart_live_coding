
import 'package:dart_live_coding/q13.dart';
import "package:test/test.dart";

void main() {
  group("Check int to Romain", () {
    test("Testing for 7", () {
      expect(RomanNumerals.toRoman(7),"VII");
    });
    test("Testing for 1994", () {
      expect(RomanNumerals.toRoman(1994), equals("MCMXCIV"));
    });
    test("Testing for 58", () {
      expect(RomanNumerals.toRoman(58), equals("LVIII"));
    });
    test("Testing for 432", () {
      expect(RomanNumerals.toRoman(432), equals("CDXXXII"));
    });
    test("Testing for 424", () {
      expect(RomanNumerals.toRoman(424), equals("CDXXIV"));
    });

    test("Testing for 999", () {
      expect(RomanNumerals.toRoman(999), equals("CMXCIX"));
    });

    test("Testing for 3999", () {
      expect(RomanNumerals.toRoman(3999), equals("MMMCMXCIX"));
    });
  });
  group("Check Romain to int", () {
    test("Testing for 7", () {
      expect(RomanNumerals.fromRoman("VII"),7);
    });
    test("Testing for 1994", () {
      expect(RomanNumerals.fromRoman("MCMXCIV"), equals(1994));
    });
    test("Testing for 58", () {
      expect(RomanNumerals.fromRoman("LVIII"), equals(58));
    });
    test("Testing for 432", () {
      expect(RomanNumerals.fromRoman("CDXXXII"), equals(432));
    });
    test("Testing for 424", () {
      expect(RomanNumerals.fromRoman("CDXXIV"), equals(424));
    });

    test("Testing for 999", () {
      expect(RomanNumerals.fromRoman("CMXCIX"), equals(999));
    });
    test("Testing for 3999", () {
      expect(RomanNumerals.fromRoman("MMMCMXCIX"), equals(3999));
    });
  });
}