/* Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
*/

void main() {
  List<String> names = ['Nidaa', 'Ahmad', 'Mohammad','Nidaa'];
  Set<String> uniqueNames = names.toSet();

   // compare the unique count with the original list length
  if (names.length > uniqueNames.length) { 
    print('Duplicates were removed');
  } else {
    print('No Duplicates');
  }
}
