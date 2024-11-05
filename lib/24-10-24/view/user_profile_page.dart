import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  final String? name;
  final String? age;
  final String? email;
  final String? phone;
  final String? image;

  UserProfilePage({
    super.key,
    required this.name,
    required this.age,
    required this.email,
    required this.phone,
    required this.image,
  });
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 231, 229),
      appBar: AppBar(backgroundColor: Colors.green,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             
             Padding(
               padding: const EdgeInsets.only(right: 10),
               child: CircleAvatar(
                 radius: 20,
                 backgroundImage: NetworkImage(image.toString()),
               ),
             ),
            Text(name.toString()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
SizedBox(height: 20),
            Center(child: Text(age.toString())),
            Center(child: Text(email.toString())),
            Center(child: Text(phone.toString())),
            SizedBox(height: 450,),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter some text',  
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
