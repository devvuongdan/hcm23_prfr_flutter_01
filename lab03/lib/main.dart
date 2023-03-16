import 'dart:math';

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

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    controller.addListener(() {
      print("Log ${controller.offset}");
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
        child: SizedBox(
            width: double.infinity,
            height: 400,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  Color? randomColor = Colors
                          .primaries[Random().nextInt(Colors.primaries.length)]
                      [Random().nextInt(9) * 100];
                  return Container(
                    // margin: EdgeInsets.only(
                    //   top: 5,
                    //   bottom: 5,
                    //   left: (index == 0 ? 0 : 5),
                    //   right: (index == 49 ? 0 : 5),
                    // ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      shape: BoxShape.circle,
                      color: randomColor,
                    ),
                  );
                },
                separatorBuilder: (_, spaceIndex) {
                  return Container(
                    width: 10,
                  );
                },
                itemCount: 50)
            //   ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 50,
            //     itemBuilder: (_, index) {
            //       print("index: $index");
            //       Color? randomColor =
            //           Colors.primaries[Random().nextInt(Colors.primaries.length)]
            //               [Random().nextInt(9) * 100];
            //       return Container(
            //         margin: EdgeInsets.only(
            //           top: 5,
            //           bottom: 5,
            //           left: (index == 0 ? 0 : 5),
            //           right: (index == 49 ? 0 : 5),
            //         ),
            //         height: 50,
            //         width: 50,
            //         decoration: BoxDecoration(
            //           border: Border.all(
            //             color: Colors.black,
            //             width: 1.0,
            //           ),
            //           shape: BoxShape.circle,
            //           color: randomColor,
            //         ),
            //       );
            //     },
            //   ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
