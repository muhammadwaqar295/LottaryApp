import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('lattory App ')),
          backgroundColor: Colors.orangeAccent,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Text('Lottary winning number is 4')),
              const SizedBox(
                height: 13,
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color:x==4?Colors.green: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: x == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            const Icon(
                              Icons.done_all_rounded,
                              color: Colors.green,
                              size: 30,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'conglatulation you win lottery   your num is $x \n',
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 30,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Better luck next time your number is $x \ntry again',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
