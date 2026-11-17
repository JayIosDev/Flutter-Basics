import 'dart:io';
void main() {

  var listNames = ['John', 'Alice', 'Bob', 'Charlie'];

  print('List of names: $listNames');
  

  listNames.add('David');
  listNames.add('Eve');

  listNames.addAll(['Frank', 'Grace']);

  print('Updated list of names: $listNames');



  listNames.replaceRange(0, 5, ['Zara', 'Liam']);
  print('Replaced list of names: $listNames');

  listNames.removeAt(0);
  print('List after removing first element: $listNames');

  listNames.removeLast();
  print('List after removing last element: $listNames');

  listNames.removeAt(2);
  print('List after removing element at index 2: $listNames');

  listNames.removeWhere((name) => name.startsWith('A'));
  print('List after removing names starting with A: $listNames');

  listNames.clear();
  print('List after clearing all elements: $listNames');


}