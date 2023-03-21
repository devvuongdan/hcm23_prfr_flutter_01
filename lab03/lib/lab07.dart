import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
  final TextEditingController controllerSDT = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();

  bool isValidPhoneNumber = true;
  bool isValidPassword = true;

  String? checkPhoneNumber(String? phoneNumber) {
    if ((phoneNumber ?? "").isEmpty) {
      return "Vui ong nhap ";
    }
    if ((phoneNumber ?? "").length < 10) {
      return "Du lieu nhap khong hop le";
    }
    if (int.tryParse(phoneNumber ?? "") == null) {
      return "Du lieu phai la so";
    }
    if ((phoneNumber ?? "").isEmpty &&
        (phoneNumber ?? "").characters.first != "0") {
      return "So dien thoi khong hop le";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: const EdgeInsets.all(20),
              // decoration: const BoxDecoration(
              //   border: Border(),
              // ),
              child: TextFormField(
                validator: checkPhoneNumber,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: controllerSDT,
                decoration: const InputDecoration(
                  labelText: "SDT",
                  labelStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  floatingLabelStyle:
                      TextStyle(color: Colors.redAccent, fontSize: 20),
                  // hintText: "0123456789",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              // color: Colors.blue,
              child: TextFormField(
                validator: (String? valuePassWord) {
                  if ((valuePassWord ?? "").length > 6) {
                    return null;
                  } else {
                    return "false";
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: controllerPass,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  floatingLabelStyle:
                      TextStyle(color: Colors.redAccent, fontSize: 20),
                  // hintText: "0123456789",
                ),
              ),
            ),
            TextButton(
              child: Text((isValidPassword && isValidPhoneNumber)
                  ? "Hop Le"
                  : "Khong Hop Le"),
              onPressed: () {},
            )
          ]),
        ));
  }
}
