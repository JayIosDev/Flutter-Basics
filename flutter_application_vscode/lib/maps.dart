void main() {
  Map<String, dynamic> map_name = {
    'name': 'John Doe',
    'age': 30,
    'isStudent': true,
    'height': 5.9,
  };

  map_name['name'] = 'Alice Smith';

  print('Name: ${map_name['name']}');
  print('Age: ${map_name['age']}');
  print('Is Student: ${map_name['isStudent']}');
  print('Height: ${map_name['height']}');
  print('Map of name: $map_name');

  print(map_name.containsKey('age')); // true
  print(map_name.containsValue(30)); // true
  print(map_name.keys); // (name, age, isStudent, height)
  print(map_name.values); // (Alice Smith, 30, true, 5.9)
  print(map_name.length); // 4
  print(map_name.isEmpty); // false
  print(map_name.isNotEmpty); // true
  print(map_name.remove('isStudent')); // true
  print(map_name); // {name: Alice Smith, age: 30, height: 5.9}
  map_name.clear(); // null
  print(map_name); // {}
}
