import 'package:flutter/material.dart';
import 'car.dart';
import 'discount.dart';

class Page3CarDetails extends StatefulWidget {
  final Car car;
  const Page3CarDetails({
    Key? key,
    required this.car,
  }) : super(key: key);
  @override
  _Page3CarDetailsState createState() {
    return _Page3CarDetailsState();
  }
}

class _Page3CarDetailsState extends State<Page3CarDetails> {
  double _currentSliderValue = 1;
  String discountCode = 'None';
  double _discountPercent = 0;
  final textDiscount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.car.brand + ' ' + widget.car.model),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(child: buildcarDetails()),
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
                    child: Image(image: AssetImage(widget.car.imgurl)),
                  ),
                  Positioned(
                    child: Text(
                      widget.car.brand,
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
                      widget.car.model,
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
                      "RM" + widget.car.rateHr.toString() + ".00",
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
                height: 20,
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
                      widget.car.passengerCapacity.toString() + '-Seater',
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
                      widget.car.fuelConsumption.toString() + ' km/l',
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
                      widget.car.fuelType,
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
                height: 15,
                color: Colors.black54,
              ),
              Slider(
                value: _currentSliderValue,
                max: 24,
                divisions: 24,
                autofocus: true,
                label: _currentSliderValue.round().toString() + ' hours',
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                  int indexNo = Discount.discountList.indexWhere(
                      (discount) => discount.discountCode == textDiscount.text);
                  if (_currentSliderValue >=
                      Discount.discountList[indexNo].discounteligibility) {
                  } else {
                    //NOT ELIGIBLE
                    showAlertDialog(
                        context,
                        "Discount code '" +
                            textDiscount.text +
                            "' has been removed.");
                    _discountPercent = 0;
                    textDiscount.text = '';
                  }
                },
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 110,
                    width: double.infinity,
                  ),
                  Positioned(
                    child: Text(
                      'Summary',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    left: 230,
                  ),
                  Positioned(
                    child: Text(
                      '${"Duration: " + _currentSliderValue.toStringAsFixed(0) + " Hour(s)"}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    top: 25,
                    left: 230,
                  ),
                  Positioned(
                    child: Text(
                      '${"Total : RM " + (widget.car.rateHr * _currentSliderValue).toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    top: 47,
                    left: 230,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 200.0, 0.0),
                    child: TextField(
                      onChanged: (text) {
                        // Respond to button press
                        int indexNo = Discount.discountList.indexWhere(
                            (discount) =>
                                discount.discountCode == textDiscount.text);

                        if (_currentSliderValue >=
                            Discount
                                .discountList[indexNo].discounteligibility) {
                          _discountPercent =
                              Discount.discountList[indexNo].discountPercent;
                        } else {
                          //NOT ELIGIBLE
                          showAlertDialog(
                              context, 'Discount code not eligible.');
                          textDiscount.text = '';
                        }
                      },
                      controller: textDiscount,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.price_change_outlined),
                        border: OutlineInputBorder(),
                        labelText: 'Discount',
                        hintText: 'Enter Code',
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Respond to button press
                        int indexNo = Discount.discountList.indexWhere(
                            (discount) =>
                                discount.discountCode == textDiscount.text);
                        if (_currentSliderValue >=
                            Discount
                                .discountList[indexNo].discounteligibility) {
                          _discountPercent =
                              Discount.discountList[indexNo].discountPercent;
                        } else {
                          //NOT ELIGIBLE
                        }
                      },
                      icon: Icon(Icons.check, size: 15),
                      label: Text("Apply Discount"),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(173, 10)),
                    ),
                    top: 58,
                    left: 20,
                  ),
                  Positioned(
                    child: Text(
                      '${"Discount: " + _discountPercent.toStringAsFixed(0) + "%"}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    top: 67,
                    left: 230,
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
                    height: 100,
                    width: double.infinity,
                  ),
                  Positioned(
                    child: Text(
                      'Grand Total',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    left: 25,
                  ),
                  Positioned(
                    child: Text(
                      '${"RM " + ((widget.car.rateHr * _currentSliderValue) - (_discountPercent / 100) * (widget.car.rateHr * _currentSliderValue)).toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.red[900],
                      ),
                    ),
                    left: 25,
                    top: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Text(' '),
            Center(
              child: Text(
                "Alert !",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(' '),
            ),
            Center(
              child: Text(
                message,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
