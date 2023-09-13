import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/web_app_bar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
               WebProfileBar(),
               WebSearchBar(),
                ContactList(),
                
              ],
            ),
          ),
        ),
        // web screen 
        Container(
          width:MediaQuery.of(context).size.width*0.75 ,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assests/pxfuel.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              WebAppBar(),
              Expanded(child: ChatList()),
              // message box
              Container(
                padding: EdgeInsets.all(6),
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                    )
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                       icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,)),
                        IconButton(
                      onPressed: (){},
                       icon: Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,)),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left:10,right: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: searchBarColor,
                                hintText: "Type a message",
                                filled: true,
                                border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                 )
                                ),
                                contentPadding: EdgeInsets.only(left: 10)
                              ),
                            ),),
                            ),
                           IconButton(
                      onPressed: (){},
                       icon: Icon(
                        Icons.mic,
                        color: Colors.grey,)), 
                  ],
                ),
              )
            ],
          ),
        )
      ],),
    );
  }
}