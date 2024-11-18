import 'package:daily_tasks/MVVM/utils/widgets/custom_widget/colors.dart';
import 'package:daily_tasks/MVVM/utils/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

class userpage5 extends StatefulWidget {
  const userpage5({super.key});

  @override
  State<userpage5> createState() => _userpage5State();
}

class _userpage5State extends State<userpage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Secondarycolor.c,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "enter your name",
                            fillColor: Primarycolor.c,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: ToggleBtn())
        ],
      ),
    );
  }
}
