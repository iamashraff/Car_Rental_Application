


# Car Rental Application

This is a simple **Car Rental Application** project that have been developed using **Flutter**. The project was developed for the Mobile and Ubiquitous Computing - ISB 26603 course at the Universiti Kuala Lumpur.

## License

The source code has been published on GitHub Repository under  _MIT License_.  
Please visit  [`LICENSE`](https://github.com/iamashraff/Car_Rental_Application/blob/main/LICENSE)  file to read the details about the license.

## Dependencies

Please refer [`pubspec.yaml`](https://github.com/iamashraff/Car_Rental_Application/blob/main/pubspec.yaml) for additional details of information regarding of depencies for this project.

## How to use

1. Fork and clone this repository.
2. Ensure to install [Flutter](https://docs.flutter.dev/get-started/install), [Android Studio](https://developer.android.com/studio) & [Visual Studio Code (VS Code)](https://code.visualstudio.com/)
3. Open Android Studio, create and run virtual device of `Android 10` or latest.
4. In VS Code, open terminal and run `flutter upgrade` command to upgrade the latest SDK.
5. Build and run the project using `flutter run` command to run the project in the virtual device.
6. Voilà ! Now it works !

## Project Requirements

Below is the requirement given for this project:
1. Users can input and validate their details.
2. Users can choose car.
3. Allw to calculate total hours of rental per hour/day
4. Users can input discount code and new total price need to be shown after discount code has been implemented.
5. Create and use 3 pages.<br>

Page 1 :<br>
- Input details & validation<br>

Page 2 :<br>
- Car list with image.
- Users can tap at the image to view car details.

Page 3 :<br>
- Users can view car details.
- Input for selecting hours.
- Input for discound code.
- Rate calculation based on hours and discount.
- Total rental rate.

## Demonstration Video

https://user-images.githubusercontent.com/65198559/218001987-c71a328c-3078-4b44-979e-2ec9150abc73.mp4?width=200&height=200


## User Interface


<img src="https://user-images.githubusercontent.com/65198559/218007626-44af06c2-1025-4a31-afac-003a42e82caf.gif" width=250>  <img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/Page 2.gif" width=250> <img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/Page%203.gif" width=250>

### Car List

List of car that been displayed in this project can be referenced the use of class [`car.dart`](https://github.com/iamashraff/Car_Rental_Application/blob/main/lib/car.dart). The class containing attributes of the rental car such as their brand, model, rate per hour, seat capacity, fuel consumption and fuel type.

> Car(this.brand, this.model, this.rateHr, this.imgurl, this.passengerCapacity,
this.fuelConsumption, this.fuelType);<br>
>static  List<Car> carList = [<br>
Car('Honda', 'City', 13, 'images/city.png', 4, 18.5, 'RON95'),<br>
Car('Perodua', 'Myvi', 12, 'images/myvi.png', 4, 18.5, 'RON95'),<br>
Car('Toyota', 'Vios', 13, 'images/vios.png', 4, 18.5, 'RON95'),<br>
Car('Honda', 'Jazz', 13, 'images/jazz.png', 4, 18.5, 'RON95'),<br>
Car('Toyota', 'Altis', 16, 'images/altis.png', 4, 18.5, 'RON95'),<br>
Car('Volkswagen', 'Polo', 13, 'images/polo.png', 4, 18.5, 'RON95'),<br>
];

### Discount Code

Applying discount code will deduct the grand total price of the rental rate. Discount code properties can be found in class [`discount.dart`](https://github.com/iamashraff/Car_Rental_Application/blob/main/lib/discount.dart).

> Discount(this.discountCode, this.discountPercent, this.discounteligibility);<br>
> static  List<Discount> discountList = [<br>
Discount('HALFDAY', 30, 12),<br>
Discount('FULLDAY', 50, 24),<br>
Discount('NEWUSER', 25, 8),<br>
];

Below is the discount code, discount rate and eligibility:

| Discount Code  | Rate | Eligibility |
| :-------------: | :-------------: | :-------------: |
| HALFDAY  | 30%  | >=12 hours |
| FULLDAY  | 50%  | >=24 hours |
| NEWUSER  | 25%  | >=8 hours |

Handling discount code that does not meet it's requirement:

<img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/DC1.png" width=170> <img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/DC2.png" width=170> <img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/DC3.png" width=170> <img src="https://raw.githubusercontent.com/iamashraff/Car_Rental_Application/main/img/DC4.png" width=170>

## References
Katz, M., Moore, K. D., Ngo, V., & Guzzi, V. (2021). _Flutter Apprentice (Second Edition): Learn to Build Cross-Platform Apps_. Razeware LLC.

## Credit

**Developed by :**  
_Muhamad Ashraff Othman_  
© 2022 All rights reserved.


