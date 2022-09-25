


import 'package:flutter/material.dart';
import 'package:washing_app/signUp/model/CustomerModel.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen() ;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Customer customer=new Customer(userName: '', emailId: '', password: '', phoneNumber: 0, vehicals: []);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Sing Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text(
                'Cutomer',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                
                // Get.to();
              },

            ),
            ElevatedButton(
              child: const Text(
                'Admin',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                // Get.to();
              },
            )
          ],
        ),
      ),
    );
  }
}
