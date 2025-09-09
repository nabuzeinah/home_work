/* Q3. Modify Attributes 
- Create a class Person with attributes name and age. 
- Create an object and set its initial values using a constructor. 
- Then change the age of the object and print the updated details.*/

void main() {
  Person person1 = Person('Nidaa', 30);
  print('Name: ${person1.name} ** Age: ${person1.age}');
  person1.age = 40;
  print('Name: ${person1.name} ** Age: ${person1.age}');
}

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
