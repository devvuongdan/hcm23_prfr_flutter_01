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
  final ScrollController controller = ScrollController();
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
      body: Align(
        alignment: Alignment.center,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // final String result =
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Screen1(onUpdate: updateValueBy2ndSreeenParram)));
                // setState(() {
                //   value = result;
                // });
              },
              child: const Text('Press me'),
            ),
            Text(value),
          ],
        )),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  // const Screen1({super.key});
  final void Function(String) onUpdate;
  const Screen1({super.key, required this.onUpdate});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "hello",
                hintText: "This is hint",
              ),
              controller: controller,
            ),
            TextButton(
                onPressed: () {
                  widget.onUpdate.call(controller.text);
                  Navigator.of(context).pop();
                  //  Navigator.pushNamed(context, '/screen1', arguments: 'Hello from Screen 1');
                },
                child: const Text("Update and Back")),
          ],
        )),
      ),
    );
  }
}
