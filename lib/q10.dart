// Complete the function which converts hex number (given as a string) to a decimal number.
import 'dart:math' as math;
int hexToDec(String hexString) {
  var HexNum = '0123456789abcdef';
  hexString = hexString.toLowerCase().split("").reversed.join("");
  int result = 0 ;
  bool isNative = false;
  for (var i = 0; i < hexString.length; i++) {
    if ( hexString[i] == "-" ){
      isNative = true;
      continue;
    }
     result += math.pow(16,i).toInt() * HexNum.indexOf(hexString[i]);
  }
  print(16^0);
  print(16^1);
  print(16^2);
    
  return isNative ? -result : result;
}