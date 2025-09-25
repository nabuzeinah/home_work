/*Q1
 Design an OOP model for planning trip fuel across multiple vehicle types.
 Requirements:
 - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
   (invalid → print an error; keep previous values).
 - Create at least two specialized vehicle types that inherit from the general type and introduce one private field 
   each affecting fuel usage, with validation.
 - Define a fuel computation method in the general type; specialized types must override it with their own rule.
 - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
  which vehicles cannot complete the route under their own constraints (you define the constraint per type)*/

void main() {
  Car car1 = Car(
      50, 15, 3); // سعة الخزان 50 لتر، استهلاك الوقود 15 كم/لتر، عدد الركاب 3
  Bus bus1 = Bus(200, 5, 50,
      30); // سعة الخزان 200 لتر، استهلاك الوقود 5 كم/لتر، الحد الأقصى للركاب 50، الركاب الحاليين 30
  List<Vehicle> vehicles = [car1, bus1];
  List<double> tripDistances = [100, 300, 600]; // مسافات الرحلات بالكيلومترات

  for (var distance in tripDistances) {
    print('Trip distance: $distance km');
    for (var vehicle in vehicles) {
      vehicle.computeFuel(distance);
    }
    print('---');
  }
}

class Vehicle {
  double _fuelCapacity = 0; //سعة الخزان - لتر
  double _fuelConsumPerKilo = 0; //استهلاك الوقود - كم/لتر

  Vehicle(double fuelCapacity, double fuelConsumPerKilo) {
    if (fuelCapacity <= 0) {
      print('Fuel capacity must be positive.');
    } else {
      this._fuelCapacity = fuelCapacity;
    }
    if (fuelConsumPerKilo <= 0) {
      print('Fuel efficiency must be positive.');
    } else {
      this._fuelConsumPerKilo = fuelConsumPerKilo;
    }
  }

  void computeFuel(double distance) {
    if (distance <= 0) {
      print('Distance must be positive.');
    } else {
      double requiredFuel = distance * _fuelConsumPerKilo;
      if (requiredFuel > _fuelCapacity) {
        print('This vehicle cannot complete the trip of $distance km.');
      } else {
        print(
            'This vehicle can complete the trip of $distance km using $requiredFuel liters of fuel.');
      }
    }
  }
}

class Car extends Vehicle {
  int _passengerCount = 0; //عدد الركاب

  Car(double fuelCapacity, double fuelConsumPerKilo, int passengerCount)
      : super(fuelCapacity, fuelConsumPerKilo) {
    if (passengerCount < 0) {
      print('Passenger count cannot be negative.');
    } else {
      this._passengerCount = passengerCount;
    }
  }

  @override
  void computeFuel(double distance) {
    if (distance <= 0) {
      print('Distance must be positive.');
    } else {
      // زيادة استهلاك الوقود بنسبة 2% لكل راكب
      double updatedEfficiency = _fuelConsumPerKilo + (0.02 * _passengerCount);
      double requiredFuel = distance * updatedEfficiency;
      if (requiredFuel > _fuelCapacity) {
        print('This car cannot complete the trip of $distance km.');
      } else {
        print(
            'This car can complete the trip of $distance km using $requiredFuel liters of fuel.');
      }
    }
  }
}

class Bus extends Vehicle {
  int _maxPassengers = 0; // عدد الركاب الحد الأقصى
  int _currentPassengers = 0; // عدد الركاب الحالي
  Bus(double fuelCapacity, double fuelConsumPerKilo, int maxPassengers,
      int currentPassengers)
      : super(fuelCapacity, fuelConsumPerKilo) {
    if (maxPassengers <= 0) {
      print('Max passengers must be positive.');
    } else {
      this._maxPassengers = maxPassengers;
    }
    if (currentPassengers < 0 || currentPassengers > maxPassengers) {
      print('Current passengers must be between 0 and $maxPassengers.');
    } else {
      this._currentPassengers = currentPassengers;
    }
  }

  @override
  void computeFuel(double distance) {
    if (distance <= 0) {
      print('Distance must be positive.');
    } else {
      double updatedEfficiency =
          _fuelConsumPerKilo + (0.05 * _currentPassengers);
      double requiredFuel = distance * updatedEfficiency;
      if (requiredFuel > _fuelCapacity) {
        print('This bus cannot complete the trip of $distance km.');
      } else {
        print(
            'This bus can complete the trip of $distance km using $requiredFuel liters of fuel.');
      }
    }
  }
}
