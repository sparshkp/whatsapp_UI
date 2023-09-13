import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';

import 'info.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.01,
              ),
              Text(info[0]["name"].toString(),style: TextStyle(fontSize: 15),),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.video_camera,color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.phone,color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search,color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,),)
            ],
          )
        ],
      ),
    );
  }
}