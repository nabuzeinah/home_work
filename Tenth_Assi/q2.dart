/* Q2
 Model shapes to compute total paintable area and cost.
 Requirements:
 - Provide a general shape type (concrete class) with an area() method that can be overridden.
 - Implement at least three concrete shape types with encapsulated dimensions and validated constructors (invalid → print; keep previous).
 - Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client code).
 - Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total cost to 2 decimals*/

void main() {
  Trianle triangle1 = Trianle(5, 10);
  Rectangle rectangle1 = Rectangle(4, 6);
  Square square1 = Square(3);

  List<Shape> shapes = [triangle1, rectangle1, square1];

  double totalArea = 0;
  for (var shape in shapes) {
    print('Area of ${shape.runtimeType}: ${shape.area()} ');
    totalArea += shape.area();
  }
  print('---');
  print('Total area: $totalArea');

  double totalCost = 0;
  if (totalArea <= 50) {
    totalCost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    totalCost = (50 * 1.50) + ((totalArea - 50) * 1.25);
  } else {
    totalCost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1.00);
  }

  print('Total cost: ${totalCost.toStringAsFixed(2)}');

}

class Shape {
  double area() {
    return 0;
  }
}

class Trianle extends Shape {
  double _base = 0;
  double _height = 0;

  Trianle(double base, double height) {
    if (base <= 0) {
      print('Base must be positive.');
    } else {
      this._base = base;
    }
    if (height <= 0) {
      print('Height must be positive.');
    } else {
      this._height = height;
    }
  }
  @override
  double area() {
    double area = 0.5 * _base * _height;
    return area;
  }
}

class Rectangle extends Shape {
  double _length = 0;
  double _width = 0;

  Rectangle(double length, double width) {
    if (length <= 0) {
      print('Length must be positive.');
    } else {
      this._length = length;
    }
    if (width <= 0) {
      print('Width must be positive.');
    } else {
      this._width = width;
    }
  }

  @override
  double area() {
    double area = _length * _width;
    return area;
  }
}

class Square extends Shape {
  double _side = 0;

  Square(double side) {
    if (side <= 0) {
      print('Side must be positive.');
    } else {
      this._side = side;
    }
  }

  @override
  double area() {
    double area = _side * _side;
    return area;
  }
}
