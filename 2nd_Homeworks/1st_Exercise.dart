/*
-	Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
-	Agrega un método para mostrar los detalles de la persona.
*/

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void showDetails() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person person1 = Person('Benson', 37);
  Person person2 = Person('Marina', 24);

  person1.showDetails();
  person2.showDetails();
}