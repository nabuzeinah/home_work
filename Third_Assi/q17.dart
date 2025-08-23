/* Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/
void main() {
  double price = 55.5;
  String currency = "USD";
  String priceTag = price.toStringAsFixed(2);
  currency = currency.padLeft(4, ' ');
  priceTag = priceTag + currency;
  print("Formatted Price Tag: $priceTag");
  print("Length of Price Tag: ${priceTag.length}");
}
