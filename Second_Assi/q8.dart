void main() {
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99
  };

  // Print the title of the book
  print(book['title']);

  // Update the price
  book['price'] = 20.99;

  // Add a new key 'author'
  book['author'] = 'Will Smith';

  // Print all keys and values
  print(book.keys);
  print(book.values);

  //check if 'pages' exists as a key
  print(book.containsKey('pages'));
}
