import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:washing_app/wlcm_screen.dart';

//import 'package:washing_app/welcome_screen.dart';
// import 'package:washing_app/customerLogin.dart';
// import 'package:washing_app/adminLogin.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'car washing demo',
      theme: ThemeData(),
      home: FutureBuilder(
        future: _fbApp,
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            Text('You have an Error! ${snapshot.error.toString()}');
            return const Text('Something went wrong!');
          } else if (snapshot.hasData) {
            return const WelcomeScreen();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
