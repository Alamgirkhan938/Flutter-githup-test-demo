import 'package:calculator/components/my-button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Align(alignment: Alignment.bottomRight,),
                    Text(
                      userInput.toString(),
                      style: TextStyle(fontSize: 30, color: Color(0xff222222)),
                    ),
                    Text(
                      answer.toString(),
                      style: TextStyle(fontSize: 30, color: Color(0xff222222)),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Mybutton(color: Color(0xff008577),
                          text: 'AC',
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(color: Color(0xff008577),
                          text: '+/-',
                          onPress: () {
                            userInput += '+/-';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(color: Color(0xff008577),
                          text: '%',
                          onPress: () {
                            userInput += '%';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '/',
                          color: Color(0xff008577),
                          onPress: () {
                            userInput += '/';
                            setState(() {
                
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          text: '7',
                          onPress: () {
                            userInput += '7';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '8',
                          onPress: () {
                            userInput += '8';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '9',
                          onPress: () {userInput += '9';
                          setState(() {
                
                          });},
                        ),
                        Mybutton(
                          text: 'x',
                          color: Color(0xff008577),
                          onPress: () {
                            userInput += 'x';
                            setState(() {
                
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          text: '4',
                          onPress: () {
                            userInput += '4';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '5',
                          onPress: () {
                            userInput += '5';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '6',
                          onPress: () {
                            userInput += '6';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '-',
                          color: Color(0xff008577),
                          onPress: () {
                            userInput += '-';
                            setState(() {
                
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          text: '1',
                          onPress: () {
                            userInput += '1';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '2',
                          onPress: () {
                            userInput += '2';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '3',
                          onPress: () {
                            userInput += '3';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '+',
                          color: Color(0xff008577),
                          onPress: () {
                            userInput += '+';
                            setState(() {
                
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Mybutton(
                          text: '0',
                          onPress: () {
                            userInput += '0';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '.',
                          onPress: () {
                            userInput += '.';
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: 'DEL',
                          onPress: () {
                            userInput = userInput.substring(0, userInput.length - 1);
                            setState(() {
                
                            });
                          },
                        ),
                        Mybutton(
                          text: '=',
                          color: Color(0xff008577),
                          onPress: () {
                            equalPress();
                            setState(() {
                
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
  void equalPress (){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
 Parser p= Parser();
 Expression expression = p.parse(finalUserInput);
 ContextModel contextModel = ContextModel();


 double eval = expression.evaluate(EvaluationType.REAL, contextModel);
 answer = eval.toString();
  }
}
