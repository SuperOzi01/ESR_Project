import 'package:flutter/material.dart';

class ButtonsOfMain extends StatelessWidget {
  final String text;
  final Function onClick;
  ButtonsOfMain({this.text , @required this.onClick});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 1920;
    double height = MediaQuery.of(context).size.height / 1080; 
    return Container(
      width: width * 466,
      height: height * 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: RaisedButton(
        elevation: 4.0,
        padding: EdgeInsets.all(0.0),
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text('$text' , 
        style: TextStyle(
          fontSize: 30.0 ,
          ),
        ),
        onPressed: onClick,
      ),

    );
  }
}