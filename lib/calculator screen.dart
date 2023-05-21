import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart' hide BoxDecoration,BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff303234),
      appBar: AppBar(title: Text("Calculator"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff303234),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(-9,-9),
                        blurRadius: 16,
                        color: Color(0xff494949).withOpacity(0.5),
                        inset: true,
                    ),
                    BoxShadow(
                        offset: Offset(9,9),
                        blurRadius: 16,
                        color: Color(0xff000000).withOpacity(0.35),
                        inset: true,
                    ),
                  ]
              ),
              child: Text('123',style: TextStyle(fontSize: 36,color: Colors.white),),
            ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 3,
              child: GridView.count(
                
                padding: EdgeInsets.all(10),
                crossAxisCount: 5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1/1,
                children: [
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),
                  Button('Q'),

                  Button('C'),
                  Button('%'),
                  Button('+/-'),
                  Button('+'),
                  Button('7'),
                  Button('8'),
                  Button('9'),
                  Button('-'),
                  Button('4'),
                  Button('5'),
                  Button('6'),
                  Button('X'),
                  Button('1'),
                  Button('2'),
                  Button('3'),
                  Button('/'),
                  Button('T'),
                  Button('.'),
                  Button('0'),
                  Button('='),
                ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
