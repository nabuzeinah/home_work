/* Q1 
- Create a class City with attributes name and population.
- In main(), create two city objects and print their details
 */

void main() {
  City jerusalem = City('Jerusalem', 100000);
  jerusalem.printDetails();
  City amman = City('Amman', 200000);
  amman.printDetails();
}

class City {
  String? name;
  int? population;

  City(String name, int population) {
    this.name = name;
    this.population = population;
  }

  void printDetails() {
    print('City: $name with population: $population');
  }
}
