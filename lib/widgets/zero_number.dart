import 'package:flutter/material.dart';

class ZeroNumber extends StatelessWidget {
  final VoidCallback pressed;
  const ZeroNumber({Key? key, required this.pressed}) : super(key: key);

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
        width: width * 0.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 23, 23, 23),
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
        ),
        child: Text(
          "0",
          style: TextStyle(
              fontFamily: "Josefin Sans", fontSize: 36, color: Colors.white),
        ),
      ),
    );
  }
}
