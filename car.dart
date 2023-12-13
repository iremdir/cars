import 'dart:math';

void main() {
  car carA = car('a', 'b', 1990, 200000);
  car carB = car('c', 'd', 2004, 30000);
  car carC = car('e', 'f', 2023, 155000);
  car carD = car('g', 'h', 1960, 990000);

  final cars = [carA, carB, carC, carD];

  car mostExpensive = cars[0];
  car cheapest = cars[0];
  car youngest = cars[0];
  car oldest = cars[0];

  priceController() {
    for (car oAnkiCar in cars) {
      if (oAnkiCar.fiyat >= mostExpensive.fiyat) {
        mostExpensive = oAnkiCar;
      }
      if (oAnkiCar.fiyat <= cheapest.fiyat) {
        cheapest = oAnkiCar;
      }
    }
    print(
        'The most expensive car is ${mostExpensive.model} and its price is ${mostExpensive.fiyat}');
    print(
        'The cheapest car is ${cheapest.model} and its price is ${cheapest.fiyat}');
  }

  ageController() {
    for (car i in cars) {
      if (i.yil > youngest.fiyat) {
        youngest = i;
      }
      if (i.yil < oldest.fiyat) {
        oldest = i;
      }
    }
    print(
        'The youngest car is ${youngest.model} and its ${2023 - youngest.yil} years old.');
    print(
        'The oldest car is ${oldest.model} and its ${2023 - oldest.yil} years old.');
  }

  priceController();
  ageController();
}

class car {
  String marka;
  String model;
  int yil;
  int fiyat;
  car(this.marka, this.model, this.yil, this.fiyat);

  int indirim(int tutar) {
    fiyat -= tutar;
    return fiyat;
  }

  int zam(int tutar) {
    fiyat += tutar;
    return fiyat;
  }
}
