import 'package:flutter/material.dart';

class MinusSign extends StatelessWidget {
  final IconData value;
  const MinusSign({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      child: Container(
        height: height * 0.07,
        width: width * 0.2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 23, 23, 23),
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
        ),
        child: Column(
          children: [
            Icon(
              value,
              size: 35,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
