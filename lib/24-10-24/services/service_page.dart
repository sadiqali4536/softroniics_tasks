import 'dart:convert';
import 'package:daily_tasks/24-10-24/model/api_model.dart';
import 'package:http/http.dart'as http;
import 'package:daily_tasks/23-10-24/model/datamodel.dart';

class ServicePage {
  var url="https://dummyjson.com/users";
  Future<List<Api_Model>?> getmethod()async{
    var response = await http.get(Uri.parse(url));
    if(response.statusCode ==200){
      var data = await json.decode(response.body);

      var dataUser = data["users"];

      List<Api_Model> products = [];

      for(var list in dataUser){
        products.add(Api_Model.fromJson(list));
      }
      return products;
 
      
    }else{
return null;
    }
  }
}