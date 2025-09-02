/*Q11
Create a function that takes a required product name and an optional discount percentage. If the
discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.*/

void main() {
  String productName = 'Laptop';
  double? discount;

  productDiscount(productName, discount);
}

void productDiscount(String productName, [double? discount]) {
  if (discount != null) {
    print('$productName has discount $discount%');
  } else {
    print('$productName has no discount');
  }
}
