import 'package:daily_tasks/MVVM/utils/widgets/custom_widget/colors.dart';
import 'package:daily_tasks/MVVM/view/screens/tabar_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validation start from here
  //declear email 
  final String EmailId="sadiqali";
  // declar password
  final String PasswordId="123456";
  //email controller
  TextEditingController email=TextEditingController();
  //password controller
  TextEditingController password=TextEditingController();
  //create aglobelkey for the form
  final login=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Secondarycolor.c,
    //second strat from here
    //attach formkey here
      body: Form(
        key: login,
        //add the key your given the  form state
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(height: 450,
                              width: 370,
                              decoration: BoxDecoration(color: Primarycolor.c,borderRadius:
                                BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: TextFormField(
                          //pass the email controller name given
                          controller: email,
                          //validate the value
                          validator: (value) {
                            if(email.text.isEmpty){
                              //enter the message
                              return "Enter your Email id";
                            }else if(email.text!=EmailId){
                               return "wrong email id";
                            }
                            return null;
                          },
                          decoration: InputDecoration(hintText:"Enter your Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                          ),
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 350,
                      child: TextFormField(
                        //pass the password name given
                        controller: password,
                        //validate with the value 
                        validator: (value) {
                          if(password.text.isEmpty){
                            //enter the message
                            return "Enter your password";
                          }else if (password.text!=PasswordId){
                            return "wrong password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText:"Enter your Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                        ),
                    ),
                    SizedBox(height: 60,),
                    SizedBox(height: 50,
                    width: 300,
                      child: ElevatedButton(onPressed: (){
                        //if form is valid , move to login
                        if(login.currentState?.validate()??false){
                          if(email.text==EmailId &&
                          password.text==PasswordId){
                            //riute of next page
                            Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_)=>TabarNavigation()));
                          }
                        }else{
                          //error snackbar message 
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("incorrect email id or password")));
                        }
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Secondarycolor.c,foregroundColor: Primarycolor.c
                      ),
                       child: Text("Login",))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}