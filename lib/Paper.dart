import 'package:flutter/material.dart';

import 'Components/NavItem.dart';

class Paper extends StatelessWidget {
  const Paper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    double space;
    (screen.size.width < 1000)? (space = 200) : space = 777; 
    return Scaffold(
      body: Wrap(
        direction: Axis.vertical,
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

            
        ],
      ),
    );
  }
}