/*Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.*/

void main() {
  Map<String, String?> envVariables = {
    "app_name": "MyApp",
    "DB_HOST": null,
    "API": "api.example.com",
  };
  String appName = (envVariables["app_name"] ?? "DefaultApp").toUpperCase();
  String dbHost = (envVariables["DB_HOST"] ?? "localhost").toUpperCase();
  String api = (envVariables["API"] ?? "default.api").toUpperCase();

  print("App Name: $appName");
  print("Database Host: $dbHost");
  print("API Endpoint: $api");
  print("---------------------");

  if (appName == "MYAPP" && dbHost != "LOCALHOST") {
    print("Prod ready");
  } else {
    print("Non-prod");
  }
}
