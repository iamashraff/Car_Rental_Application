class Car {
  String brand;
  String model;
  int rateHr;
  String imgurl;
  int passengerCapacity;
  double fuelConsumption;
  String fuelType;
  Car(this.brand, this.model, this.rateHr, this.imgurl, this.passengerCapacity,
      this.fuelConsumption, this.fuelType);

  static List<Car> carList = [
    Car('Honda', 'City', 13, 'images/city.png', 4, 18.5, 'RON95'),
    Car('Perodua', 'Myvi', 12, 'images/myvi.png', 4, 18.5, 'RON95'),
    Car('Toyota', 'Vios', 13, 'images/vios.png', 4, 18.5, 'RON95'),
    Car('Honda', 'Jazz', 13, 'images/jazz.png', 4, 18.5, 'RON95'),
    Car('Toyota', 'Altis', 16, 'images/altis.png', 4, 18.5, 'RON95'),
    Car('Volkswagen', 'Polo', 13, 'images/polo.png', 4, 18.5, 'RON95'),
  ];
} //END CLASS


