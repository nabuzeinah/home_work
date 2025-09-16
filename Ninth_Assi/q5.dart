/* Q5
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.
 - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
 - In main(), create a book, print its title and estimated reading time.
*/

void main() {
  Book myBook = Book();
  myBook.title = 'Test';
  myBook.pages = 50;
  print(myBook.readingTime);
}

class Book {
  String? _title;
  int? _pages;

  set title(String title) {
    if (title.isEmpty) {
      print('Invalid Title');
    } else {
      this._title = title;
    }
  }

  set pages(int pages) {
    if (pages >= 0) {
      this._pages = pages;
    } else {
      print('Invalid pages');
    }
  }

  String get title => this._title!;

  int get readingTime => this.pages * 2;

  int get pages => this.pages!;
}
