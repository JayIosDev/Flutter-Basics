void main() {
  myClass myObject = new myClass();

  myObject.myMethod('Jayaram');

  myObject.myMethod('Saket Ram');

  myObject.myMethod('John Doe');

  myObject.myMethod('Alice');

  myObject.myMethod('Bob');

  print(myObject.Add(5, 10));

  print(myObject.Add(115, 130));

  print(myObject.Add(325, 102));
}

class myClass {
  myClass() {
    print('myClass created');
  }

  void myMethod(String name) {
    print('Hello, $name!, This is a method inside myClass.');
  }

  int Add(int a, int b) {
    int sum = a + b;
    return sum;
  }
}
