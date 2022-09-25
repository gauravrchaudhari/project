// ignore_for_file: file_names
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:washing_app/SignUpPage.dart';
import 'package:washing_app/OtpVerify.dart';
//import 'package:washing_app/SignUpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DatabaseReference testRef = FirebaseDatabase.instance.ref().child("test");
    // TextEditingController phoneController = TextEditingController();
    // TextEditingController otpController = TextEditingController();
    // String verificationID = "";
    //FirebaseAuth _auth = FirebaseAuth.instance;
    testRef.set("Hello World ${Random().nextInt(100)}");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome back ! \n"
                      "Login with your phone number",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Enter your phone number "),
                    // children: [
                    //   makeInput(label: "Phone Number "),
                    //   //makeInput(label: "Password", obsureText: true),
                    // ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  child: Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: const Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black))),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                        //   AuthCredential phoneAuthCredential =
                        //       PhoneAuthProvider.credential(
                        //           verificationId: verificationID,
                        //           smsCode: otpController.text);
                        //   signInWithPhoneAuthCred(phoneAuthCredential, context);
                        //   await _auth.verifyPhoneNumber(
                        //       phoneNumber: "+91${phoneController.text}",
                        //       verificationCompleted:
                        //           (phoneAuthCredential) async {},
                        //       verificationFailed: (verificationFailed) {
                        //         print(verificationFailed);
                        //       },
                        //       codeSent: (verificationID, resendingToken) async {},
                        //       codeAutoRetrievalTimeout:
                        //           (verificationID) async {});
                      },
                      color: Colors.indigoAccent[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "Get OTP",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     Text("Dont have an account?"),
                //     Text(
                //       "Sign Up",
                //       style:
                //           TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                //     ),
                //   ],
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// void signInWithPhoneAuthCred(
//     AuthCredential phoneAuthCredential, BuildContext context) async {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   try {
//     final authCred = await _auth.signInWithCredential(phoneAuthCredential);

//     if (authCred.user != null) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => const SignupPage()));
//     }
//   } on FirebaseAuthException catch (e) {
//     print(e.message);
//     ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Some Error Occured. Try Again Later')));
//   }
// }

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        obscureText: obsureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                //color: Colors.grey[400],
                ),
          ),
          border: OutlineInputBorder(
              // borderSide: BorderSide(color: Colors.grey[400])
              ),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ],
  );
}
