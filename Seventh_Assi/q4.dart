/*Q4. Class with Default Attribute Value 
- Create a class Product with attributes name and price. 
- Give price a default value of 0. 
- Create two objects: one with a custom price and one with the default price. Print their details*/

void main() {
  Product myProduct1 = Product();
  myProduct1.name = 'Laptop';
  myProduct1.price = 50;
  print('Product Name: ${myProduct1.name} Price: ${myProduct1.price}');

  Product myProduct2 = Product();
  myProduct2.name = 'PC';
  print('Product Name: ${myProduct2.name} Price: ${myProduct2.price}');
}

class Product {
  String? name;
  int price = 0;
}
