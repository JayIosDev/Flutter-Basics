void main() {
  final name;

  name = 'John Doe';

  print('Name: $name');

  const age = 30;

  print('Age: $age');

  final listOfCricketPlayers = ['Rohit Sharma', 'Sachin Tendulkar', 'Virat Kohli', 'MS Dhoni'];

  listOfCricketPlayers.add('Jasprit Bumrah');

  print('Cricket Players: $listOfCricketPlayers');


 const listOfFootballPlayers = ['Lionel Messi', 'Cristiano Ronaldo', 'Neymar Jr.', 'Kylian Mbappe'];

 // listOfFootballPlayers.add('Mohamed Salah'); // errror: Cannot add to an unmodifiable list

 // difference between final and const is that final can be assigned a value at runtime, while const must be assigned a value at compile time. Therefore, you cannot modify a const list after it has been created.
 
  print('Football Players: $listOfFootballPlayers');


}
