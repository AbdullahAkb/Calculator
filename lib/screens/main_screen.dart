import 'package:calculator/widgets/add_sign.dart';
import 'package:calculator/widgets/clear_button.dart';
import 'package:calculator/widgets/equal_sign.dart';
import 'package:calculator/widgets/minus_sign.dart';

import 'package:calculator/widgets/number_widget.dart';
import 'package:calculator/widgets/zero_number.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double answer = 0.0;
  TextEditingController inputValue = TextEditingController();
  String operandText = "";
  double value1 = 0.0;
  double value2 = 0.0;

  void calculateFun() {
    if (operandText.contains("+")) {
      setState(() {
        answer = value1 + value2;
        inputValue.text = answer.toString().substring(0, 2);
        value1 = 0.0;
        value2 = 0.0;
        operandText = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: width * 0.02),
              child: TextFormField(
                controller: inputValue,
                textAlign: TextAlign.right,
                showCursor: true,
                readOnly: true,
                autofocus: true,
                cursorColor: Color(0xFFF83600),
                cursorHeight: height * 0.05,
                style: TextStyle(
                    fontFamily: "Josefin Sans",
                    color: Colors.white,
                    fontSize: 36),
                decoration: InputDecoration(
                    focusedBorder:
                        UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: height * 0.02),
            Divider(
              color: Colors.grey,
              height: height * 0.07,
              endIndent: 3,
              indent: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClearButton(),
                SizedBox(width: width * 0.04),
                AddSign(
                  value: Icons.add_rounded,
                ),
                SizedBox(width: width * 0.04),
                MinusSign(
                  value: Icons.minimize_rounded,
                ),
              ],
            ),
            SizedBox(height: height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberWidget(
                  value: '1',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: '2',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: '3',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: 'x',
                ),
              ],
            ),
            SizedBox(height: height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberWidget(
                  value: '4',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: '5',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: '6',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  value: '/',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: height * 0.035),
                    Row(
                      children: [
                        NumberWidget(
                          value: '7',
                        ),
                        SizedBox(width: width * 0.04),
                        NumberWidget(
                          value: '8',
                        ),
                        SizedBox(width: width * 0.04),
                        NumberWidget(
                          value: '9',
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.035),
                    Row(
                      children: [
                        SizedBox(width: width * 0.04),
                        ZeroNumber(),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: width * 0.04),
                Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    EqualSign(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Main Screen'),
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
    //         child: TextFormField(
    //           controller: inputValue,
    //           keyboardType: TextInputType.phone,
    //           textAlign: TextAlign.end,
    //           decoration: InputDecoration(hintText: "0"),
    //         ),
    //       ),
    //       SizedBox(
    //         height: height * 0.1,
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           TextButton(
    //               onPressed: () {
    //                 setState(() {
    //                   value1 = 10;
    //                   inputValue.text = "10";
    //                 });
    //               },
    //               child: Text("10")),
    //           TextButton(
    //               onPressed: () {
    //                 setState(() {
    //                   value2 = 10;
    //                   inputValue.text = value1.toString().substring(0, 2) +
    //                       operandText +
    //                       value2.toString().substring(0, 2);
    //                 });
    //               },
    //               child: Text("10")),
    //         ],
    //       ),
    //       SizedBox(
    //         height: height * 0.05,
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           TextButton(
    //               onPressed: () {
    //                 setState(() {
    //                   operandText = "+";
    //                   inputValue.text =
    //                       value1.toString().substring(0, 2) + operandText;
    //                 });
    //               },
    //               child: Text("Add")),
    //           TextButton(
    //               onPressed: () {
    //                 calculateFun();
    //               },
    //               child: Text("Ans")),
    //         ],
    //       ),
    //       TextButton(
    //           onPressed: () {
    //             setState(() {
    //               inputValue.clear();
    //               value1 = 0.0;
    //               value2 = 0.0;
    //               operandText = "";
    //             });
    //           },
    //           child: Text("Clear"))
    //     ],
    //   ),
    // );
  }
}
