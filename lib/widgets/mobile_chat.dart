import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        
        title: Text(info[0]["name"].toString()),
        actions:  [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.video_camera)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
         
        ],
        
      ),
      body: Column(
        children:  [
          Expanded(
            child: ChatList()),
            TextField(
              decoration: InputDecoration(
                fillColor: mobileChatBoxColor,
                filled: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,
                  ),
                  ),
                  suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.camera_alt,color: Colors.grey,),
                      Icon(Icons.attach_file_outlined,color: Colors.grey,),
                      
                    ],
                  ),),
                  hintText: "Type a message",
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                   borderSide:  BorderSide(
                    width: 0,
                  style: BorderStyle.none,
                  )
                 ),
          contentPadding: EdgeInsets.all(10)
           ),
            )
        ],
      ),
    );
  }
}