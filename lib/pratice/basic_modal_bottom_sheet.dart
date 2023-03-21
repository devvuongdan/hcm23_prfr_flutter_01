import 'package:flutter/material.dart';

void main() {
  runApp(const BasicBottomSheet());
}

class BasicBottomSheet extends StatelessWidget {
  const BasicBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Bottom Sheet'),
        ),
        body: const ShowBottomSheet(),
      ),
    );
  }
}

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,
        children: [
          MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              child: const Text("Show Bottom Sheet"),
              onPressed: () {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //text title
                          children: [
                            const Text(
                              "This is a Modal Bottom Sheet",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //button on modal
                                MaterialButton(
                                    color: Colors.grey,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Yes")),
                                const SizedBox(
                                  width: 20,
                                ),
                                MaterialButton(
                                    color: Colors.grey,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("No")),
                              ],
                            )
                          ],
                        ),
                      );
                    });
              })
        ],
      ),
    );
  }
}
