import 'package:daily_tasks/21-10-24/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAlertDialouge extends StatelessWidget {

   AddAlertDialouge({super.key});

  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _ageController=TextEditingController();

  final getInstance = Get.put(GetModel());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 50,
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(hintText: "Enter your Name",fillColor: Colors.white,filled: true,

              border: OutlineInputBorder(borderRadius:BorderRadius.circular(50))),),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 50,
              child: TextFormField(
                controller: _ageController,
                decoration: InputDecoration(hintText: "Enter your age",
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) )),),
            )
          ],),
        ),
      ),
      actions: [
        TextButton(onPressed: (){
           Get.back();
          getInstance.addName(UserModel(name: _nameController.text,
           age: int.parse(_ageController.text), id: DateTime.now().toString()));
        }, child: Text('Add')),
        TextButton(onPressed: (){
          Get.back();
        }, child: Text('cancel')),
      ],
      title: Text('Add User'),
      
    );
  }
}
