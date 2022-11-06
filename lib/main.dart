import 'package:flutter/material.dart';
import 'package:test_project/custom_btn.dart';
import 'package:test_project/k_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBtn(
              tap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const KAlert();
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
