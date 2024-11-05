import 'package:daily_tasks/21-10-24/alert_dialouge.dart';
import 'package:daily_tasks/21-10-24/getx_controller.dart';
import 'package:daily_tasks/21-10-24/update_alert_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile_page extends StatelessWidget {
   profile_page({super.key});

  

  void createNewTask(BuildContext context){
    showDialog(context: context, builder: (context){
      return AddAlertDialouge();
    }
    );
  }

    void updateTask(BuildContext context,String index){
    showDialog(context: context, builder: (context){
      return UpdateAlertDialouge(id: index,);
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    final getNA = Get.put(GetModel());

    return Scaffold(backgroundColor: const Color.fromARGB(255, 1, 4, 19),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0,right: 20),
            child: FloatingActionButton(foregroundColor:Color.fromARGB(244, 240, 240, 242),
            backgroundColor: const Color.fromARGB(73, 3, 15, 247),onPressed: (){
                   createNewTask(context);
                   },
                   child: Icon(Icons.add,size: 40,),),
          ),
        ],
      ),
      appBar: AppBar(backgroundColor: const Color.fromARGB(73, 3, 15, 247),
      foregroundColor: Colors.white,
      title: Text("profile page",),
    ),
      body: Obx(
         () {
          return Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //  Container(margin: EdgeInsets.only(bottom: 50.0,left: 250.0),
                  // ),
                  Expanded(child: ListView.separated(
                    separatorBuilder: (context,index){
                      return Divider(color: Colors.white,
                      height: 1,
                      thickness: 1,);
                    },
                    itemCount: getNA.userList.length,
                  itemBuilder: (context,index){
                    final indexed = getNA.userList[index];
                   return ListTile(
                   textColor: Colors.white,
                   iconColor: Colors.white,
                    title: Text(indexed.name),
                    subtitle: Text(indexed.age.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                          updateTask(context,indexed.id);
                        },
                        icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          getNA.deletename(indexed.id);
                          Get.back();

                        },icon: Icon(Icons.delete))
                      ],
                    ),
            );}),),
          
              ],
            ),
          );
        }
      ),
    );
  }
}