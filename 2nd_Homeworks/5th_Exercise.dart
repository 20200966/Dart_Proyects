/*
-	Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
-	Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo del tipo ingresado (e.g., "auto", "moto").
*/

abstract class Animal {
  void breathe();
}

mixin Swimmer {
  void swim() => print('The dolphin is swimming.');
}

class Dolphin extends Animal with Swimmer {
  @override
  void breathe() {
    print('The dolphin is breathing.');
  }
}

abstract class Vehicle {
  void drive();
  
  factory Vehicle.createVehicle(String type) {
    if (type == 'car') {
      return Car();
    } else if (type == 'bike') {
      return Bike();
    } else {
      throw ArgumentError('Unknown vehicle type');
    }
  }
}

class Car implements Vehicle {
  @override
  void drive() {
    print('Driving a car.');
  }
}

class Bike implements Vehicle {
  @override
  void drive() {
    print('Riding a bike.');
  }
}

void main() {
  var dolphin = Dolphin();
  dolphin.breathe();
  dolphin.swim();

  var car = Vehicle.createVehicle('car');
  car.drive();

  var bike = Vehicle.createVehicle('bike');
  bike.drive();
}