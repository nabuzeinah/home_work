/*Q12
Create a function that takes named parameters firstName, lastName, and an optional named
parameter age. Print the full name and, if age is provided, also print 'Age: X'.
*/

void main() {
  String firstName = 'Nidaa';
  String lastName = 'AbuZeinah';
  int? age = 37;

  printInfo(firstName: firstName, lastName: lastName, age: age);
}

void printInfo(
    {required String firstName, required String lastName, int? age}) {
  String fullName = firstName + lastName;
  print('Full Name: $fullName');
  if (age != null) {
    print('Age: $age');
  }
}
