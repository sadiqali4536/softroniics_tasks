import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class apps1 extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      "image": "https://th.bing.com/th/id/OIP.hR6TQma4SWfP-yfQmT5oqgHaHa?rs=1&pid=ImgDetMain",
      "title": "YouTube",
      "url": "https://www.youtube.com/",
    },
    {
      "image": "https://cdn.pixabay.com/photo/2016/08/09/17/52/instagram-1581266_1280.jpg",
      "title": "Instagram",
      "url": "https://www.instagram.com/accounts/login/?hl=en",
    },
    {
      "image":"https://cdn.1min30.com/wp-content/uploads/2017/08/Snapchat-Logo.png",
      "title": "snapchat",
       "url":"https://www.snapchat.com/", 
         },
         {
          "image":"https://www.pngmart.com/files/23/Facebook-Logo-PNG-Isolated-HD.png",
          "title":"Facebook",
          "url":"https://www.facebook.com/login.php",
         },
  ];

  apps1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Apps"),
        ),
        body: ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () async {
                  final url = Uri.parse(mylist[index]["url"]);
                  // if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(content: Text('Could not launch ${mylist[index]["title"]}')),
                  //   );
                  // }
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(mylist[index]["image"]),
                ),
                title: Text(mylist[index]["title"]),
              ),
            );
          },
        ),
      ),
    );
  }
}
