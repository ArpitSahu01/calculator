import 'package:flutter/material.dart';

class Button extends StatefulWidget {

  String text;
  Button(this.text);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  bool _isPressed = false;

  void _onPointerUp(PointerUpEvent event){
    setState(() {
      _isPressed = false;
    });
  }

  void _onPointerDown(PointerDownEvent event){
    setState(() {
      _isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Listener(
        onPointerUp: _onPointerUp,
        onPointerDown: _onPointerDown,
         child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff303234),
              boxShadow: _isPressed? null: [
                BoxShadow(
                    offset: Offset(-6,-6),
                    blurRadius: 14,
                    color: Color(0xff494949).withOpacity(0.4)
                ),
                BoxShadow(
                    offset: Offset(6,6),
                    blurRadius: 14,
                    color: Color(0xff000000).withOpacity(0.3)
                ),
              ]
          ),
          child: Center(child: Text(widget.text,style: TextStyle(fontSize: 24,color: Colors.white),),),
        ),
      ),
    );
  }
}
