import 'dart:convert';

import 'package:get/get_connect/connect.dart';

class getapidata extends GetConnect{
  dynamic getalldata()async{
    var response=await  get("http://192.168.0.62:9010/getappsettings") ;
    if(response.statusCode==200){
      return(jsonDecode(response.body));
    }
    
  }
}