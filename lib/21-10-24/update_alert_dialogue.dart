import 'package:daily_tasks/21-10-24/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateAlertDialouge extends StatelessWidget {
  String id;

   UpdateAlertDialouge({super.key,required this.id});

  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _ageController=TextEditingController();

  final getInstance = Get.put(GetModel());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      backgroundColor: const Color.fromARGB(255, 246, 247, 248),
      content: Container(
        height: 120,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 40,
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(hintText: "Enter your Name",

              border: OutlineInputBorder(borderRadius:BorderRadius.circular(50))),),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 40,
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

          getInstance.updateName(id, _nameController.text, _ageController.text);
        }, child: Text('Update')),
        TextButton(onPressed: (){
          Get.back();
        }, child: Text('cancel')),
      ],
      title: Text('Update'),
      
    );
  }
}
