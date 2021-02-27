import 'dart:convert';
import 'package:http/http.dart' as http ;
class JsonAPI{

  String ourJson="";
   JsonAPI({this.ourJson});
   

   Map<String , Dynamic> getValues(){
     return json.decode(this.ourJson);
   }

    void postValues(Map<String , Dynamic> Item){
      json.encode(Item);
   }

}