import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const Color deactive = Color(0xff737678);
const active = Color(0xff0066B6);

class NavItem extends StatelessWidget {
  final String text;
  final Function onClick;
  Color col = deactive;
  NavItem({this.text ,@required this.onClick});
  
  @override
  Widget build(BuildContext context){
    return Container(
      child: TextButton(
        onPressed: this.onClick,
        child: Text('$text' , 
        style: TextStyle(
          fontSize: 25,
          color: col,
        ),
        ),
      ),
    );
  }

  void setDeactive(){
    col = deactive;
  }
  void setactive(){
    col = active;
  }
}