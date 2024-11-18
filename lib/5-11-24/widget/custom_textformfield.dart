import 'package:daily_tasks/5-11-24/widget/colors.dart';
import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
 final String hinttext;
  final TextStyle hintstyle;
  final Widget prefixicon;
  final  Widget suffixicon;
  Function()suffix;
  bool obscure;
  String obscurechar;
  Icon icon;
  //validation
  final String? Function(String?)?validator;
   CustomTextformfield({super.key,
   required this.hinttext,
   required this.hintstyle,
   required this.prefixicon,
   required this.suffixicon,
   required this.suffix,
   required this.obscure,
   required this.obscurechar,   
   required this.icon,
   required this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 400,
    height: 200,
      child: TextFormField(
        obscureText: obscure,
        obscuringCharacter: obscurechar,
        validator:validator ,
        
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 229, 231, 233),
        filled: true,
          hintText:hinttext,
          hintStyle: hintstyle,
          prefixIcon: prefixicon,
          suffixIcon: IconButton(onPressed: suffix, icon: icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )
        ),
      ),
    );
  }
}

class custome_button extends StatelessWidget {
  String?text;
  Function()onpress;
   custome_button({super.key,
   required this.text,
   required this.onpress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpress,child:Text(text.toString()) ,);
  }


 
}

 Widget CustomButtonEx({String? text, Function()? onpress}){
    return ElevatedButton(onPressed: onpress,child:Text(text.toString()) ,);
  }
