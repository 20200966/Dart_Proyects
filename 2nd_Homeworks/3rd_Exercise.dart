/*
-	Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
-	Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.
*/

abstract class Animal {
  void eat();
}

class Dog extends Animal {
  String name;
  int age;

  Dog(this.name, this.age) : assert(age > 0, 'Age must be greater than 0');

  @override
  void eat() {
    print('$name is eating a raw meat.');
  }
}

void main() {
  Dog dog1 = Dog('Dopy', 4);
  
  dog1.eat();
}