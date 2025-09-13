/* Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
 the temperature in Fahrenheit. In main(), create an object and print the converted value*/

void main() {
  Temperature temp = Temperature(37);
  print('Temp is ${temp.toFahrenheit()}');
}

class Temperature {
  double? celsius;

  Temperature(double celsius) {
    this.celsius = celsius;
  }

  double toFahrenheit() {
    double result = celsius! * (9 / 5) + 32;
    return result;
  }
}
