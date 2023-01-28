import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      child: Container(
        height: height * 0.07,
        width: width * 0.464,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 23, 23, 23),
          borderRadius: BorderRadius.all(
            Radius.circular(29),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "C",
              style: TextStyle(
                fontFamily: "Josefin Sans",
                fontSize: 30,
                color: Color(0xFFF83600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
