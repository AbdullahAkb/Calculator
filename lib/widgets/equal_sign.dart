import 'package:flutter/material.dart';

class EqualSign extends StatelessWidget {
  const EqualSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      child: Container(
        height: height * 0.18,
        width: width * 0.2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFF83600),
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
        ),
        child: Text(
          "=",
          style: TextStyle(
              fontFamily: "Josefin Sans", fontSize: 36, color: Colors.white),
        ),
      ),
    );
  }
}
