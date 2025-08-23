/*Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.*/

void main() {
  Map<String, String?> user = {'name': 'Bilal', 'phone': null};

  // check if the phone number is null
  if (user['phone'] == null) {
    print('No phone number found');
  }

  // update the phone number
  user['phone'] = '0505296962';

  //print the length of phone number
  print(user['phone']!.length);
}
