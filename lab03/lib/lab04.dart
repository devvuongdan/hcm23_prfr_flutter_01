import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
                color: Colors.transparent,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    height: 400,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (_, index) {
                          Color? randomColor = Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)]
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
                        itemCount: 50)),
              );
            },
          );
        },
      ),
    );
  }
}
