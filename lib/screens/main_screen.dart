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
  String fieldText = "";
  String var1ForCalculations = "";
  String var2ForCalculations = "";

//1 number
  void funForNum1() {
    setState(() {
      fieldText = "1";
      inputValue.text = inputValue.text + "1";
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//2 number
  void funForNum2() {
    setState(() {
      fieldText = "2";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//3 number
  void funForNum3() {
    inputValue.text = inputValue.text + fieldText;
    setState(() {
      fieldText = "3";

      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//4 number
  void funForNum4() {
    setState(() {
      fieldText = "4";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//5 number
  void funForNum5() {
    setState(() {
      fieldText = "5";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//6 number
  void funForNum6() {
    setState(() {
      fieldText = "6";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//7 number
  void funForNum7() {
    setState(() {
      fieldText = "7";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//8 number
  void funForNum8() {
    setState(() {
      fieldText = "8";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//9 number
  void funForNum9() {
    setState(() {
      fieldText = "9";
      inputValue.text = inputValue.text + fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = var2ForCalculations + fieldText;
      } else {
        var1ForCalculations = var1ForCalculations + fieldText;
      }
    });
  }

//0 number
  void funForNum0() {
    setState(() {
      fieldText = "0";
      inputValue.text = fieldText;
      if (inputValue.text.contains(operandText)) {
        var2ForCalculations = fieldText;
      } else {
        var1ForCalculations = fieldText;
      }
    });
  }

// X sign
  void funForSignX() {
    setState(() {
      fieldText = "x";
      inputValue.text = fieldText;
      operandText = fieldText;
    });
  }

  // / sign
  void funForSignDivide() {
    setState(() {
      fieldText = "/";
      inputValue.text = fieldText;
      operandText = fieldText;
    });
  }

// + sign
  void funForSignAdd() {
    setState(() {
      fieldText = "+";
      inputValue.text = fieldText;
      operandText = fieldText;
    });
  }

  // - sign
  void funForSignMinus() {
    setState(() {
      fieldText = "-";
      inputValue.text = fieldText;
      operandText = fieldText;
    });
  }

//clear the field
  void funForSignClear() {
    setState(() {
      fieldText = "";
      inputValue.clear();
      operandText = "";
      value1 = 0.0;
      value2 = 0.0;
      var1ForCalculations = "";
      var2ForCalculations = "";
    });
  }

// for single delete of filed
  void funForDeleteSingleValue() {
    if (inputValue.text != "") {
      int value = inputValue.text.length;
      inputValue.text = inputValue.text.substring(0, value = value - 1);

      setState(() {
        if (inputValue.text.contains(operandText)) {
          var2ForCalculations =
              var2ForCalculations.substring(0, var2ForCalculations.length - 1);
        } else {
          var1ForCalculations =
              var1ForCalculations.substring(0, var1ForCalculations.length - 1);
        }
      });
    } else {}
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    funForDeleteSingleValue();
                  },
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Icon(
                    Icons.keyboard_double_arrow_left_rounded,
                    color: Color.fromARGB(255, 148, 148, 148),
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
              ],
            ),
            // SizedBox(height: height * 0.02),
            Divider(
              color: Colors.grey,
              height: height * 0.03,
              endIndent: 3,
              indent: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClearButton(
                  pressed: funForSignClear,
                ),
                SizedBox(width: width * 0.04),
                AddSign(
                  pressed: funForSignAdd,
                  value: Icons.add_rounded,
                ),
                SizedBox(width: width * 0.04),
                MinusSign(
                  pressed: funForSignMinus,
                  value: Icons.minimize_rounded,
                ),
              ],
            ),
            SizedBox(height: height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberWidget(
                  pressed: funForNum1,
                  value: '1',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForNum2,
                  value: '2',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForNum3,
                  value: '3',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForSignX,
                  value: 'x',
                ),
              ],
            ),
            SizedBox(height: height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberWidget(
                  pressed: funForNum4,
                  value: '4',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForNum5,
                  value: '5',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForNum6,
                  value: '6',
                ),
                SizedBox(width: width * 0.04),
                NumberWidget(
                  pressed: funForSignDivide,
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
                          pressed: funForNum7,
                          value: '7',
                        ),
                        SizedBox(width: width * 0.04),
                        NumberWidget(
                          pressed: funForNum8,
                          value: '8',
                        ),
                        SizedBox(width: width * 0.04),
                        NumberWidget(
                          pressed: funForNum9,
                          value: '9',
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.035),
                    Row(
                      children: [
                        SizedBox(width: width * 0.04),
                        ZeroNumber(
                          pressed: funForNum0,
                        ),
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
