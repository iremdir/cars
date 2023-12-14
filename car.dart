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
    for (car i in cars) {
      if (i.fiyat >= mostExpensive.fiyat) {
        mostExpensive = i;
      }
      if (i.fiyat <= cheapest.fiyat) {
        cheapest = i;
      }
    }
    print(
        'The most expensive car is ${mostExpensive.marka} ${mostExpensive.model} and its price is ${mostExpensive.fiyat}€');
    print(
        'The cheapest car is ${cheapest.marka} ${cheapest.model} and its price is ${cheapest.fiyat}€');
  }

  ageController() {
    for (car i in cars) {
      if (i.yil > youngest.yil) {
        youngest = i;
      }
      if (i.yil < oldest.yil) {
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

  for (int i = 0; i <= 3; i++) {
    cars[i].fiyat -= cars[i].yil;
  }
  for (int i = 0; i < cars.length; i++) {
    print(cars[i]);
  }
}

class car {
  String marka;
  String model;
  int yil;
  int fiyat;
  car(this.marka, this.model, this.yil, this.fiyat);

  @override
  String toString() {
    return 'markası: $marka , modeli: $model , üretim yılı : $yil , fiyatı : $fiyat';
  }

  int indirim(int tutar) {
    fiyat -= tutar;
    return fiyat;
  }

  int zam(int tutar) {
    fiyat += tutar;
    return fiyat;
  }
}
