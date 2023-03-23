import 'dart:core';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwController = TextEditingController();

  bool isPhoneValid = true;
  bool isPasswValid = true;

  //check phone number validator
  String? checkPhoneNumber(String? phoneNumber) {
    if ((phoneNumber ?? "").isEmpty) {
      return "Please input a phone number";
    }
    if ((phoneNumber ?? "").length > 10) {
      return "The phone number is to long and has to be 10 numbers";
    }
    // if ((phoneNumber ?? "").length < 10) {
    //   return "The phone number is too short has to be 10 numbers";
    // }
    if (int.tryParse(phoneNumber ?? "") == null) {
      return "The string has to be integer numbers";
    }
    if ((phoneNumber ?? "").isEmpty &&
        (phoneNumber ?? "").characters.first != "0") {
      return "The phone number is not exist";
    }
    return null;
  }

  String? checkPassword(String? passwordInput) {
    if ((passwordInput ?? "").isEmpty) {
      return "Please input a password";
    }
    if ((passwordInput ?? "").length <= 6) {
      return "The password is too short";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Phone number
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                validator: checkPhoneNumber,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: phoneController,
                style: const TextStyle(
                  fontSize: 28,
                ),
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    fontSize: 28,
                    // fontWeight: FontWeight.bold,
                  ),
                  floatingLabelStyle:
                      TextStyle(color: Colors.blueGrey, fontSize: 24),
                ),
              ),
            ),
            //
            const SizedBox(
              height: 20,
            ),
            //Password
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                validator: checkPassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: passwController,
                style: const TextStyle(
                  fontSize: 28,
                ),
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 28,
                    // fontWeight: FontWeight.bold,
                  ),
                  floatingLabelStyle:
                      TextStyle(color: Colors.blueGrey, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //show result
            TextButton(
              onPressed: () {},
              child:
                  Text((isPasswValid && isPhoneValid) ? "Legit" : "Not legit"),
            )
          ],
        ),
      ),
    );
  }
}
