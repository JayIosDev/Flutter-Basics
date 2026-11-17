import 'dart:io';

void main() {
  print('Hello, World!');
  stdout.write('Enter your name: ');

  var name = stdin.readLineSync();

  print('Welcome to Dart programming, $name!');

  Human human = new Human();
  print('Sum of two numbers: ${human.sumOfTwoNumbers(5, 10)}');
}

class Human {
  Human() {
    print('Human created');
  }

  sumOfTwoNumbers(int a, int b) {
    return a + b;
  }
}
