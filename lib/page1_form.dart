import 'package:car_rental_application/page2_carlist.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// This is the stateful widget that the main application instantiates.
class Page1Form extends StatefulWidget {
  const Page1Form({Key? key}) : super(key: key);

  @override
  State<Page1Form> createState() => _Page1FormState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Page1FormState extends State<Page1Form> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final textName = TextEditingController();
  final textAddress = TextEditingController();
  final textPhone = TextEditingController();
  final textEmail = TextEditingController();

//DECLARE VARIABLES
  String name = '';
  String address = '';
  String phoneNumber = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset('images/lf30_skwgamub.json'),
          Text(
            'Please input your details',
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 7.0, 50.0, 5.0),
            child: TextFormField(
              controller: textName,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Name',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 7.0, 50.0, 5.0),
            child: TextFormField(
              controller: textAddress,
              decoration: const InputDecoration(
                hintText: 'Address',
                labelText: 'Address',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 7.0, 50.0, 5.0),
            child: TextFormField(
              controller: textPhone,
              decoration: const InputDecoration(
                hintText: 'Phone Number',
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 7.0, 50.0, 5.0),
            child: TextFormField(
              controller: textEmail,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200.0, 30.0, 0.0, 10.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Page2Carlist()),
                  );
                } else {
                  showAlertDialog(context);
                }
              },
              child: const Text('Continue >'),
            ),
          ),
        ],
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        actions: <Widget>[
          Text(' '),
          Center(
            child: Text(
              "Uhh Ohh !",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Lottie.asset(
              'images/error.json',
              width: 230,
            ),
          ),
          Center(
            child: Text(' '),
          ),
          Center(
            child: Text(
              "Please fill in all the details.",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('Yeah sure'),
          ),
        ],
      );
    },
  );
}
