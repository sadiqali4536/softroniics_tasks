import 'package:daily_tasks/MVVM/utils/widgets/toggle_button.dart';
import 'package:daily_tasks/MVVM/utils/widgets/custom_widget/colors.dart';
import 'package:daily_tasks/MVVM/view/screens/user_page.dart';
import 'package:daily_tasks/MVVM/view/screens/apps.dart';
import 'package:daily_tasks/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class TabarNavigation extends StatefulWidget {
   TabarNavigation({super.key});

  @override
  State<TabarNavigation> createState() => _TabarNavigationState();
}

class _TabarNavigationState extends State<TabarNavigation> {
  Primarycolor colors =Primarycolor();

  bool val = false;



  @override
  Widget build(BuildContext context) {

    ThemeProvider themes = Provider.of<ThemeProvider>(context);
    return DefaultTabController(length: 3, 
    child: Scaffold(
      backgroundColor: themes.themeDataStyle.primaryColor,
      appBar: AppBar(
        actions: [
          Switch(value: val, onChanged: (newVal){
            setState(() {
              val = newVal;
              themes.changeTheme();
            });
          })
        ],
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.person),),
          Tab(icon: Icon(Icons.settings),),
        ],
        
        ),
        title:Text("Hello Sadiq "),
        ),
        body: TabBarView(
          children: [
            Container(color: Primarycolor.c,
            child: apps1()),
          
          Container(
            color: Primarycolor.c,
            child: userpage5()
            
          ),

         Container(
          child: Icon(Icons.settings),
          ),
              
              
              
            
          
        ]),
    )
    );
    
  }
}