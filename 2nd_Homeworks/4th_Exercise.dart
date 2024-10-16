/*
-	Crea una enumeración DiaSemana con los días de la semana.
-	Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.
*/

enum WeekDay {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

extension Parity on int {
  bool isEvenN() => this % 2 == 0;
}

void main() {
  var dayNumber = 6;

  if (dayNumber >= 1 && dayNumber <= 7) {
    print('The day of the week is ${WeekDay.values[dayNumber - 1]}');
  } else {
    print('Invalid number');
  }

  if (dayNumber.isEvenN()) {
    print('$dayNumber is an even number.');
  } else {
    print('$dayNumber is an odd number.');
  }
}