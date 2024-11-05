import 'package:daily_tasks/5-11-24/image_blur.dart';
import 'package:daily_tasks/5-11-24/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  //email controller here
  final TextEditingController Emailcontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();
  final email="sadiq@mail";

  bool obscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                
                child: Center(
                  child: CustomTextformfield(
                    //suffix path
                    suffix: (){
                      setState(() {
                        obscure=!obscure;
                      });
                    },
                    icon: obscure?Icon(Icons.remove_red_eye):Icon(Icons.close),
                    obscure: obscure,
                    obscurechar: "*",
                    //validation
                    validator: (Value) {
                      if (Value!.isEmpty){
                        return "Enter your Email";
                      }else if (Value != email){
                        return "wrong  Email Id";
                      }
                      return null;
                      
                    },
                    hinttext: "Enter your email",
                   hintstyle: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 1, 12, 21)),
                    prefixicon: Icon(Icons.email),
                     suffixicon: Icon(Icons.remove_red_eye)),
                ),
              ),
              custome_button(text: "Submit", onpress: (){
                setState(() {
                  if (formkey.currentState!.validate()){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>ImageBlur())
                    );
                    Emailcontroller.clear();
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("inalid ")));
                  }
                });
              })
            ],
            
          ),
        ) 
        ),
      
    );
  }
}