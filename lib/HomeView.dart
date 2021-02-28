import 'package:esr_project/Components/ButtonsOfMain.dart';
import 'package:flutter/material.dart';

import 'Explore.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 456 * (MediaQuery.of(context).size.width / 1920),
                height: 510 * (MediaQuery.of(context).size.height / 1080),
                child: Image.asset('logo.jpeg'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 100,),
              Column(
                children: [
                  Text('Single Platform To Start Research', 
                    style: TextStyle(
                    fontSize: 30,
                    ),
                  ),
                  Divider(
                    height: 2.0,
                    thickness: 2.0,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40,),
        //// Here we will add the Buttons 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonsOfMain(
                    onClick: (){
                      print('Admin Button Pressed');
                    },
                    text: 'ADMIN',
                    ),
                    SizedBox(height: 20,),
                    ButtonsOfMain(
                      onClick: (){
                        print('Supervisor is Pressed');
                      }, 
                      text: 'Supervisor',
                    ),
                    SizedBox(height: 20,),
                    ButtonsOfMain(
                      onClick: (){
                        print('Researcher is Pressed');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Explore()));
                      }, 
                      text: 'Researcher',
                    ),
                ],
              ),
            )
          ],
        ),

        ],
        ),
      ),
    );
  }
}