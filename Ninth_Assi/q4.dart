/*Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price*/

void main() {
  Product myPro = Product();

  myPro._name = 'hp';
  myPro._price = 1000;
}

class Product {
  String? _name;
  double? _price;

  set name(String name) {
    if (name.isEmpty) {
      print('Invalid name');
    } else {
      this._name = name;
    }
  }

  set price(double price) {
    if (price >= 0) {
      this._price = price;
    } else {
      print('Invalid price');
    }
  }
}
