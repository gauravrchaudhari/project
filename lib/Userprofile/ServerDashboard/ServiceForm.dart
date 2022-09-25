import 'package:flutter/material.dart';

import 'ServiceFormBike.dart';

class ServiceForm extends StatefulWidget {
  const ServiceForm({super.key});

  @override
  State<ServiceForm> createState() => _ServiceFormState();

}


class _ServiceFormState extends State<ServiceForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vehilce Services'),
          backgroundColor: Colors.pink[300],
        ),
        body: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox.fromSize(
              size: Size(100, 100), // button width and height
              child: ClipRect(
                child: Material(
                  color: Colors.grey, // button color
                  child: InkWell(
                    splashColor: Colors.black, // splash color
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) =>const ServiceFormBike()));
                    }, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.motorcycle), // icon
                        Text("Bike"), // text
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox.fromSize(
              size: Size(100, 100), // button width and height
              child: ClipRect(
                child: Material(
                  color: Colors.grey, // button color
                  child: InkWell(
                    splashColor: Colors.black, // splash color
                    onTap: () {

                    }, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.car_rental_sharp), // icon
                        Text("Car"), // text
                      ],
                    ),
                  ),
                ),
              ),
            )

          ]),
        ));
  }
}

