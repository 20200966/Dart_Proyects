/*
-	Crea una clase Empleado que herede de Persona. Agrega un constructor nombrado que incluya nombre, edad y un nuevo atributo, cargo. Sobrescribe el método de mostrar detalles para incluir el cargo del empleado.
*/ 

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void showDetails() {
    print('Name: $name, Age: $age');
  }
}

class Employee extends Person {
  String position;

  Employee.withPosition(String name, int age, this.position) : super(name, age);

  @override
  void showDetails() {
    print('Name: $name, Age: $age, Position: $position');
  }
}

void main() {
  Employee employee1 = Employee.withPosition('Benson', 37, 'Manager');
  Employee employee2 = Employee.withPosition('Marina', 24, 'Supervisor');

  employee1.showDetails();
  employee2.showDetails();
}