import 'dart:convert';

import 'package:daily_tasks/28-10-24/model/mod_note.dart';
import 'package:http/http.dart' as http;

class Servepage {
  var url ="https://jsonplaceholder.typicode.com/posts";
  Future<List<ModNote>?>getmethod()async{
    var response=await http.get(Uri.parse(url));

    if(response.statusCode==200){
      var api_mod=await json.decode(response.body);
      return List<ModNote>.from(api_mod.map((i)=>ModNote.fromJson(i)));
    }else{
      return null;
    }
  }
}