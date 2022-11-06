import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback tap;

  const CustomBtn({Key? key, required this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width*0.5,
        color: Colors.lightBlue,
        child: const Center(
          child: Text(
            'Button',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
