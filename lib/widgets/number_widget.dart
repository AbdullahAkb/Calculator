import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  final VoidCallback pressed;
  final String value;
  const NumberWidget({Key? key, required this.value, required this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        pressed();
      },
      borderRadius: BorderRadius.all(
        Radius.circular(29),
      ),
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
        child: Text(
          value,
          style: TextStyle(
              fontFamily: "Josefin Sans", fontSize: 36, color: Colors.white),
        ),
      ),
    );
  }
}
