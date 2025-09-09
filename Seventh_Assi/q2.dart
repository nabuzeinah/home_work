/* Q2. Class with Constructor 
- Create a class Car with attributes brand and year. 
- Add a constructor to set the values when creating the object. 
- In main(), create two car objects with different data and print their details.*/

void main() {
  Car car1 = Car('Toyota', 2020);
  print('Your car brand is ${car1.brand} and model ${car1.year}');

  Car car2 = Car('BMW', 2024);
  print('Your car brand is ${car2.brand} and model ${car2.year}');
}

class Car {
  String? brand;
  int? year;

  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
