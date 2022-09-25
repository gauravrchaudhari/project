// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washing_app/OtpVerify.dart';
import 'package:washing_app/UserProfile/ServerDashboard/MainDashboard.dart';
import 'package:washing_app/login/view/loginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  //Initialiaze Firebase App
  // Future<FirebaseApp> _initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Hello Welcome!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Caring for your vehicle is our priority.. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                  ],
                ),

                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/carwashing.jpg'),
                  )),
                ),

                // Image.asset('assets/images/carwashing.jpg'),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Login()),
                    // );
                    Get.to(LogInScreen());
                  },
                  color: const Color.fromARGB(255, 59, 144, 44),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(60)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.white70),
                  ),
                ),
                // MaterialButton(
                //   minWidth: double.infinity,
                //   height: 60,
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const SignupPage()),
                //     );
                //   },
                //   color: const Color.fromARGB(255, 44, 124, 146),
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(60)),
                //   child: const Text(
                //     "Sign UP",
                //     style: TextStyle(
                //         fontWeight: FontWeight.w900,
                //         fontSize: 20,
                //         color: Colors.white70),
                //   ),
                // ),
              ]),
        ),
      ),
    );
  }
}
