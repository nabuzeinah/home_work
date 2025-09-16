/*Q2
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main(), demonstrate creating two car objects (one valid, one invalid input)*/

void main() {
  Car myCar1 = Car();
  myCar1._brand = 'Toyota';
  myCar1.year = 2000;
  Car myCar2 = Car();
  myCar2._brand = '';
  myCar2.year = 1800;

}

class Car {
  String? _brand;
  int? _year;

  set brand(String brand) {
    if (brand.isEmpty) {
      print('Invalid brans');
    } else {
      this._brand = brand;
    }
  }

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print('Invalid year');
    }
  }

  String get brand => this._brand!;

  int get year => this.year!;
}
