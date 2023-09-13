import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/widgets/info.dart';

import 'mobile_chat.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileChatScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only( bottom:8.0),
                  child: ListTile(
                        
                    leading: CircleAvatar(backgroundImage: NetworkImage(info[index]["profilePic"].toString()),radius: 25,),
                    trailing: Text(info[index]["time"].toString(),style: TextStyle(fontSize: 13,color: Colors.grey),),
                    title: Text(info[index]["name"].toString(),style: TextStyle(fontSize: 18),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text(info[index]["message"].toString(),style: TextStyle(fontSize: 15),),
                    ),
                  ),
                ),
              ),
              Divider(color: dividerColor,indent: 85,)
            ],
          );
          
        }),
    );
  }
}