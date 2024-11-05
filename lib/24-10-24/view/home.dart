import 'package:daily_tasks/24-10-24/controller/controller_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_profile_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller=Get.put(ControllerPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(150.0),
      
        child: AppBar(title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Sadiq",style: TextStyle(color: Colors.white),),
            Text("Welcome back",style: TextStyle(color: Colors.white,fontSize: 15),),
          ],
        ),
        
        backgroundColor: const Color.fromARGB(255, 56, 130, 60),),
      ),backgroundColor: Colors.white,
      
      body: Container(alignment: Alignment.center,
        child:Obx((){
        
          return controller.loadind.isTrue? Center(child: CircularProgressIndicator(
            strokeWidth: 1.15,),)
            :ListView.separated(
              itemCount: controller.dataList.length??0,
            itemBuilder: (c,i){
              final data = controller.dataList[i];
              return ListTile(leading: CircleAvatar(backgroundImage: NetworkImage(data.image.toString()),),
              title: Text(data.firstName.toString()),
              subtitle: Text(data.email.toString()),
              onTap: (){
                Get.to(UserProfilePage(name: data.firstName, 
                age: data.age.toString(),
                 email: data.email,
                  phone: data.phone,
                   image: data.image,
                   ));
              },
          );
            },
            separatorBuilder:(context,index){
              return Divider(color:  Color.fromARGB(255, 213, 210, 210),
              thickness: 1
              );
            },
            );
            
        }
      ),
    ));
  }
}