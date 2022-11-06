import 'package:flutter/material.dart';
import 'package:test_project/custom_btn.dart';

class KAlert extends StatefulWidget {
  const KAlert({Key? key}) : super(key: key);

  @override
  State<KAlert> createState() => _KAlertState();
}

class _KAlertState extends State<KAlert> {
  @override
  Widget build(BuildContext context) {
    int itemLength = 50;
    return AlertDialog(
      title: TweenAnimationBuilder(
        duration: const Duration(seconds: 1),
        tween: Tween<double>(begin: 10, end: 30),
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Text(
            "Alert!!",
            style: TextStyle(fontSize: value),
          );
        },
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.5,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: itemLength,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const Text("You are awesome!"),
                const SizedBox(height: 10),
                if (index == itemLength - 1)
                  Column(
                    children: [
                      const SizedBox(height: 25),
                      CustomBtn(
                        tap: () {},
                      ),
                    ],
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
