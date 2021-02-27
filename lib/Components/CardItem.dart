import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String name , type , level;
  final Function onClick ;   
  CardItem({this.name , this.type , this.level ,@required this.onClick});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 772 * (MediaQuery.of(context).size.width / 1920),
      height: 159 * (MediaQuery.of(context).size.height / 1080),
      child: RaisedButton(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30 ),
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        onPressed: onClick,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 73.0 * (MediaQuery.of(context).size.width / 1920),
              ),
              Text(this.name, 
              style: TextStyle(
                fontSize: 25,
              ),
              ),
            ],
          ),
          SizedBox(height: 13* (MediaQuery.of(context).size.height / 1080),),
          Row(
            children: [
              SizedBox(
                width: 73.0 * (MediaQuery.of(context).size.width / 1920),
              ),
              Text(this.type, 
              style: TextStyle(
                fontSize: 15,
                ),
              ),
              SizedBox(
                width: 472 * (MediaQuery.of(context).size.width / 1920),
              ),
              Text(this.level, 
              style: TextStyle(
                fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}