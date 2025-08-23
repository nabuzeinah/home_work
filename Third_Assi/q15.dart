/* Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/
void main() {
  String? path;
  Map<String, String> pages = {
    "/": "Home Page",
    "/products": "Products Page",
    "/profile": "User Profile"
  };

  path = "/profile"; // Change this value to test different paths
  switch (path) {
    case "/":
      print(pages["/"]);
      break;
    case "/products":
      print(pages["/products"]);
      Map<String, String>? productDetails = {
        "id": "10",
        "name": "Laptop",
        "price": "1000"
      };
      print("Product Details: $productDetails");
      break;
    case "/profile":
      print(pages["/profile"]);
      Map<String, String?> userProfile = {"username": "nidaa", "phone": null};
      String username = userProfile["username"] ?? "Guest";
      String phone = userProfile["phone"] ?? "No phone number provided";
      print("Username: $username");
      print("Phone: $phone");
      break;
    default:
      print('Page not found');
      break;
  }
}
