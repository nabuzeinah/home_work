/* Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
*/

void main() {
  // build a map of country codes
  Map<String, String> countryCodes = {
    'PS': 'Palestine',
    'EG': 'Egypt',
    'LB': 'Lebanon',
    'SY': 'Syria'
  };

  //print the value of EG
  print(countryCodes['EG']);

  //add a new entry Qatar
  countryCodes['QA'] = 'Qatar';

  // print the total length
  print('The total length of the set = ${countryCodes.length}');

  //check if 'JO' exists—if not, print 'Jordan missing'
  if (countryCodes.containsKey('JO')) {
    print(countryCodes['JO']);
  } else {
    print('Jordan is missing');
  }
}
