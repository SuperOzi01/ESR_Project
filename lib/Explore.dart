import 'package:esr_project/Components/CardItem.dart';
import 'package:esr_project/Components/JsonAPI.dart';
import 'package:esr_project/Components/NavItem.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  
  bool loading  = true ; 
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

      List<Widget> cardslist = [];
    @override
    void initState(){ 
      super.initState();
        load();
    }

      void load() async {
          cardslist =  await JsonAPI().getResearchs(context).whenComplete(() => print('done'));
          
          Future.delayed(Duration(seconds: 2), (){
            setState(() {
            cardslist;
            widget.loading = false ;  
          });
          });
      }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    double space;
    (screen.size.width < 1000)? (space = 200) : space = 777; 
    
       
        return (widget.loading)?  Text("Loading") : 
        Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
              children: [
                SizedBox(
                width: 317 * (screen.size.width / 1920 ),
              ),
              Container(
                width: 613 * (screen.size.width / 1920 ),
                height: 79 * (screen.size.height / 1080),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                    hintText: 'Search',

                  ),
                ),
              ),
              ///
              ///here you may add the filter 
              ],
            ),
            //
            //
            //
            SizedBox(width: 239,height: 48,),
            Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 772 * (screen.size.width / 1920),
                  height: 527 * (screen.size.height / 1080),
                  child: ListView(
                    padding: EdgeInsets.only(bottom: 20.0),
                    children: cardslist,
                  ),
                ),  
                SizedBox(width: 137 *(screen.size.width / 1920) ,
                ),
                // here add the side image
                Container(
                  width: 657 * (screen.size.width / 1920),
                  height: 526 * (screen.size.height / 1080),
                  child: Image.asset('Image1.png'),
                ),
              ],
            ),
            //
            //
            //


          ],
        ),
      ),
    );
  }
}