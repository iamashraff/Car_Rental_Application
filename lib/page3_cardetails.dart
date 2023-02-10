import 'package:flutter/material.dart';
import 'car.dart';

class Page3CarDetails extends StatelessWidget {
  final Car car;

  const Page3CarDetails({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blue[900],
        elevation: 10,
        title: const Text('Car Details'),
      ),
      body: SafeArea(
        child: Expanded(
          child: buildcarDetails(),
        ),
      ),
    );
  }

  Widget buildcarDetails() {
    return Column(
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: 260,
                    width: double.infinity,
                    child: Image(image: AssetImage(car.imgurl)),
                  ),
                  Positioned(
                    child: Text(
                      car.brand,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    left: 40,
                    top: 210,
                  ),
                  Positioned(
                    child: Text(
                      car.model,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    left: 40,
                    top: 230,
                  ),
                  Positioned(
                    child: Text(
                      "RM" + car.rateHr.toString() + ".00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue[900],
                      ),
                    ),
                    left: 280,
                    top: 215,
                  ),
                  Positioned(
                    child: Text(
                      "per hour",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                    left: 300,
                    top: 235,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.monetization_on_rounded,
                      color: Colors.blue,
                    ),
                    left: 250,
                    top: 220,
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                height: 30,
                color: Colors.black54,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                  ),
                  Positioned(
                    child: Text(
                      'Capacity',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    left: 47,
                  ),
                  Positioned(
                    child: Text(
                      car.passengerCapacity.toString() + '-Seater',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    left: 47,
                    top: 20,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.airline_seat_recline_extra,
                      color: Colors.blue,
                    ),
                    left: 20,
                    top: 10,
                  ),
                  Positioned(
                    child: Text(
                      'Fuel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    left: 170,
                  ),
                  Positioned(
                    child: Text(
                      car.fuelConsumption.toString() + ' km/l',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    left: 170,
                    top: 20,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.local_gas_station,
                      color: Colors.blue,
                    ),
                    left: 145,
                    top: 10,
                  ),
                  Positioned(
                    child: Text(
                      'Fuel Type',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    left: 290,
                  ),
                  Positioned(
                    child: Text(
                      car.fuelType,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    left: 290,
                    top: 20,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.local_gas_station,
                      color: Colors.blue,
                    ),
                    left: 260,
                    top: 10,
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                height: 30,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
