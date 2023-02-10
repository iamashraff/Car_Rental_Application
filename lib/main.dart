import 'package:car_rental_application/page1_form.dart';
import 'package:car_rental_application/page2_carlist.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const CarRentalApp());
}

class CarRentalApp extends StatelessWidget {
  const CarRentalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Rental',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 200,
            splash: 'images/splashcarlogo.png',
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: Colors.lightBlue));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Car Rental",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Car Rental"),
        ),
        //body: const Page1Form(),
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(child: const Page1Form()),
      ),
    );
  }
}
