

import 'package:get/get.dart';

class GetModel extends GetxController{
  RxList<UserModel> userList = <UserModel>[].obs;


  sharedInstances()async{
    
  }


  void addName(UserModel user){
    userList.add(user);
  }

  void updateName(String id,String newName,String newAge){
   final index = userList.indexWhere((index) => index.id == id);
   userList[index] =  UserModel(name: newName, age: int.parse(newAge), id: id);
  }


  void deletename(String id){
    userList.removeWhere((index)=> index.id == id);
  }

}



class UserModel{
  String name;
  int age;
  String id;

  UserModel({required this.name,required this.age, required this.id});
}