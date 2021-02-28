import 'package:flutter/material.dart';

import 'Components/NavItem.dart';

class Paper extends StatelessWidget {
  
    final String title , content ; 
     Paper({this.title , this.content});
  
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    double space;
    (screen.size.width < 1000)? (space = 200) : space = 777; 
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 105 * (screen.size.width / 1920),
                ),
                Container(
                  width: 202 * (screen.size.width / 1920),
                  height: 226 * (screen.size.height / 1080),
                  child: Image.asset('logo.jpeg'),
                ),
                // Nav Items
                SizedBox(width: space * (screen.size.width / 1920),
                ),
                NavItem(
                  onClick: (){
                    print("Explore been clicked");
                  }, 
                  text: 'Explore',
                  ),
                  SizedBox(width: 30,),
                  NavItem(
                  onClick: (){
                    print("Propose been clicked");

                  }, 
                  text: 'Propose',
                  ),
                  SizedBox(width: 30,),
                  NavItem(
                  onClick: (){
                    print("Workspace been clicked");
                  }, 
                  text: 'Workspace',
                  ),
              ],
            ),
            // 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 200 * (screen.size.width / 1920),),
                Container(
                  width: 757* (screen.size.width / 1920),
                  height: 820* (screen.size.height / 1080),
                  child: Column(
                    children: [
                      Text(title , style: TextStyle(fontSize: 40),),
                      SizedBox(height: 44,),
                      Container(
                        width: 755* (screen.size.width / 1920),
                        height: 418* (screen.size.height / 1080),
                        child: Text(content, style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(height: 50* (screen.size.height / 1080),),
                      Container(
                        width: 266* (screen.size.width / 1920),
                        height: 90* (screen.size.height / 1080),
                        child: RaisedButton(
                          onPressed:(){
                            Navigator.pop(context);
                          },
                          elevation: 4,
                          child: Text('Back' , 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            ),
                          ), 
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                           color: Color(0xff0065B3),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
        ],
      ),
    );
  }
}