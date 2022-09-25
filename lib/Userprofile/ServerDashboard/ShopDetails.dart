// ignore_for_file: file_names

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:washing_app/UserProfile/ServerDashboard/MainDashboard.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({super.key});

  @override
  ShopDetailsState createState() {
    return ShopDetailsState();
  }
}

class ShopDetailsState extends State<ShopDetails> {
  late String name;
  //late String Email;
  late String address;
  late String number;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget buildName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
            labelText: 'Shop Owner Name', icon: Icon(Icons.person)),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
        },
        onSaved: (value) {
          name = value!;
        },
      ),
    );
  }

  // Widget buildEmail() {
  //   return TextFormField(
  //     decoration:
  //         const InputDecoration(labelText: 'Email', icon: Icon(Icons.mail)),
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         return 'Please enter some text';
  //       }

  //       //if(!RegExp())
  //     },
  //     onSaved: (value) {
  //       Email = value!;
  //     },
  //   );
  // }

  Widget buildAddress() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
            labelText: 'Full Address', icon: Icon(Icons.home)),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
        },
        onSaved: (value) {
          address = value!;
        },
      ),
    );
  }

  Widget buildNumber() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
            //border: OutlineInputBorder()
            //border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            //hintText: "Enter your Phone No.",
            labelText: 'Phone Number',
            icon: Icon(Icons.phone)),
        maxLength: 10,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
        },
        onSaved: (value) {
          name = value!;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Details'),
        leading: IconButton(
            onPressed: () {
              //Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainDashboard()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildName(),
                //buildEmail(),
                buildAddress(),
                buildNumber(),
                const SizedBox(height: 100),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () => {
                    // if (formKey.currentState!.validate()) {print("Invalid")},
                    formKey.currentState?.save(),
                  },
                  color: const Color.fromARGB(255, 69, 100, 167),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(60)),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
