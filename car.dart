import 'dart:math';

void main() {
  car carA = car('Bugatti', 'Veyron', 2005, 4000000);
  car carB = car('Lamborghini', 'Veneno', 2013, 4300000);
  car carC = car('Audi', 'R8', 2006, 378900);
  car carD = car('Ferrari', 'F50', 1995, 500000);

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
        'The most expensive car is ${mostExpensive.marka} ${mostExpensive.model} and its price is ${mostExpensive.fiyat}€');
    print(
        'The cheapest car is ${cheapest.marka} ${cheapest.model} and its price is ${cheapest.fiyat}€');
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
        'The youngest car is ${youngest.marka} ${youngest.model} and its ${2023 - youngest.yil} years old.');
    print(
        'The oldest car is ${oldest.marka} ${oldest.model} and its ${2023 - oldest.yil} years old.');
  }

  priceController();
  ageController();
  print(cars);
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
