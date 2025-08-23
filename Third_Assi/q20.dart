/*Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.*/

void main() {
  double age = 15;
  bool hasParent = false;
  String area = "general";

  switch (area) {
    case "general":
      if (age < 18 && !hasParent) {
        print("Under 18 without a parent not allowed");
      } else {
        print("Access granted to general area");
      }
      break;
    case "restricted":
      if (age < 18 && !hasParent) {
        print("Under 18 without a parent not allowed");
      } else {
        print("Access granted to restricted area");
      }
      break;
    default:
      print("Invalid area specified");
  }
}
