// Write a function that when given a number >= 0, returns an Array of ascending length subarrays.
// https://www.codewars.com/kata/515f51d438015969f7000013/solutions/dart
// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]


List<List<int>> pyramid(int n) {
  var result = <List<int>>[];
  // your code here
  return result;
}



// List<List<int>> pyramid(int n) {
//   return List.generate(n, (i) => List.filled(i + 1, 1));
// }