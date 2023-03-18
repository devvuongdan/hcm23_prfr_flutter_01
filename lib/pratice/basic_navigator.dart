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
  String value = "ABC";

  void update() {
    setState(() {
      value = "New Value";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Screen2(onUpdate: update)));
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
  // const Screen2({super.key});

  final void Function() onUpdate;
  const Screen2({super.key, required this.onUpdate});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController controller = TextEditingController(text: "ABC");

  @override
  void initState() {
    controller.addListener(() {
      print(controller.text);
    });
    super.initState();
  }

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
                    Navigator.of(context).pop();
                    widget.onUpdate.call;
                  })
            ],
          ),
        ),
      ),
    );
  }
}
