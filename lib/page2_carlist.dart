import 'package:flutter/material.dart';
import 'car.dart';
import 'package:car_rental_application/page3_cardetailsnew.dart';

class Page2Carlist extends StatelessWidget {
  const Page2Carlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Car.carList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Page3CarDetails(car: Car.carList[index]);
                    },
                  ),
                );
              },
              child: buildnewCard(Car.carList[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildnewCard(Car car) {
    // 3
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(20),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.black)),
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: Text(
                car.brand,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              top: 2,
            ),
            Positioned(
              child: Text(
                car.model,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                "From",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
              ),
              bottom: 15,
              left: 230,
            ),
            Positioned(
              child: Text(
                "RM" + car.rateHr.toString() + "/hour",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue[900],
                ),
              ),
              bottom: -3,
              left: 230,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 250),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(car.imgurl),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
