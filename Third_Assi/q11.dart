/*Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

import 'dart:io';

void main() {
  double price = 1500;
  double discount;
  double finalPrice;
  double threshold = 1000;
  bool isStudent = false;
  bool hasCoupon = false;
  double couponValue = 0;
  String ans;

  print('Welcome to Our Market');
  print('****************************************');

  print('Are you a student? y/n'); // check if the user is a student
  ans = stdin.readLineSync()!.toLowerCase();
  if (ans == 'y') {
    isStudent = true;
  } else {
    isStudent = false;
    print('Do you have a coupon? y/n'); // check if the user has a coupon
    ans = stdin.readLineSync()!.toLowerCase();
    if (ans == 'y') {
      hasCoupon = true;
      print('Enter the coupon value (e.g. .2 for 20%)'); // get the coupon value
      couponValue = double.parse(stdin.readLineSync()!);
    } else {
      hasCoupon = false;
    }
  }

  // calculate the discount
  if (isStudent) {
    // if the user is student then the discount will be (40%)
    discount = price * .4;
  } else if (hasCoupon) {
    // if the user is has a coupon then the discount will be the coupon value
    discount = price * couponValue;
  } else if (price >= threshold) {
    // if the price is upove a threshold then the discount will be (20%)
    discount = price * .2;
  } else {
    discount = 0; // if none of the above then no discount
  }

// calculate the final price
  finalPrice = price - discount;

  print('Your Price is $finalPrice');
}
