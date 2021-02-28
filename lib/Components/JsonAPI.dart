import 'dart:convert';
import 'dart:js';
import 'package:esr_project/Components/CardItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Paper.dart';
import 'CardItem.dart';
import 'package:esr_project/Explore.dart';
class JsonAPI{
    
   

   Future<List<Widget>> getResearchs(BuildContext context)async{ 
     var parameters  = {
       'grant_type' : 'password', 
       'username' : 'Azoz', 
       'password': '123'
     };
      String key ;
      List<Widget> list = [];
     final request = http.post('http://esrapp-001-site1.htempurl.com/Token' , body: parameters);
     request.then((value) {
        print(value.statusCode); 
        var response =  json.decode(value.body);
        
        key = response['token_type'] + " " + response['access_token'];
       final token = {
          'Authorization': key,
        };
        
        final myResearch = http.get('http://esrapp-001-site1.htempurl.com/Research/GetMyResearch' , headers: token);
        myResearch.then((value) {
          var papers = json.decode(value.body);
          
          for(var pa in papers){
            
            list.add(
              CardItem(onClick: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Paper(
                  title: pa['researchSubject'],
                   content: pa['researchConcept'],
                    )
                  )
                );
              },
              name: pa['researchSubject'],
              level:"Beginner",
              type: "Education",
              )
            );
            list.add(SizedBox(height: 20.0,));
          }
          });
        print('Start');
     });
     
     return list;
   }

    void postValues(){
      (true) ? "hi" : "bey";
   }

}