import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3, 
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
        title: Text("WhatsApp",
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded,color: Colors.grey,))
        ],
        bottom: TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
          tabs: const [
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",),
        ]),),
        body: ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: Icon(Icons.comment_rounded),),
      ));
    
  }
}