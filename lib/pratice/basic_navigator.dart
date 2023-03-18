// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  String value = "ABC";

  void update() {
    setState(() {
      value = "New Value";
    });
  }

  void updateValueBy2ndSreeenParram(String newValue) {
    setState(() {
      value = newValue;
    });
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
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () async {
                // final String result =
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Screen2(onUpdate: updateValueBy2ndSreeenParram)));
                // setState(() {
                //   value = result;
                // });
              },
              child: Text(value),
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  final void Function(String) onUpdate;
  const Screen2({super.key, required this.onUpdate});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController controller = TextEditingController(text: "ABC");

  // @override
  // void initState() {
  //   controller.addListener(() {
  //     print(controller.text);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  label: Text("This is label"),
                  hintText: "This is hint",
                ),
                controller: controller,
              ),
              MaterialButton(
                  child: const Text("Update and Back"),
                  onPressed: () {
                    widget.onUpdate.call(controller.text);
                    Navigator.of(context).pop();
                    // Navigator.of(context).pop(controller.text);
                    // print(controller.text);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class User {
  final String username;
  final String pasw;
  User({
    required this.username,
    required this.pasw,
  });
}
