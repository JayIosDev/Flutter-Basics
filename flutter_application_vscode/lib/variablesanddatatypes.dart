import 'dart:io';

void main() {
  String name = 'John Doe';
  int age = 30;
  bool isStudent = true;
  BigInt largeNumber = BigInt.parse('123456789012345678901234567890');
  double height = 5.9;

  int? a;

  a = 100;

  print(a);
  print('Name: $name');
  print('Age: $age');
  print('Is Student: $isStudent');
  print('Large Number: $largeNumber');
  print('Height: $height');
  print('Large Number (as int): ${largeNumber.toInt()}');

  var subject = 'Maths';

  subject = 'Science';

  var section = 'B';
  

  section = 'A';

  section = 10;

  // dynamic variable;

  // variable = 42;

  // variable = 'Hello, Dart!';




}
