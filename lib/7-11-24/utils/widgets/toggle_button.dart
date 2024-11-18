import 'package:daily_tasks/MVVM/utils/widgets/custom_widget/colors.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleBtn extends StatelessWidget {
  const ToggleBtn({super.key});
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ToggleSwitch(
               minWidth: 120.0,
               cornerRadius: 20.0,
               activeBgColors: [[Colors.green[800]!], [Colors.red[800]!]],
               activeFgColor: Colors.white,
               inactiveBgColor: Colors.grey,
               inactiveFgColor: Colors.white,
               initialLabelIndex: 1,
               totalSwitches: 2,
               labels: ['male', 'Female'],
               radiusStyle: true,
               onToggle: (index) {
             print('switched to: $index');
               },
             ),
          ),
              ),
        ],
      )
    );
    
  }
}