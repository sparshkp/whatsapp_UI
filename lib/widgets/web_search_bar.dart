import 'package:flutter/material.dart';

import 'colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
      )),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.search,size: 20,),),
          
          hintStyle: TextStyle(fontSize: 14),
          hintText: "Search or Start a new chat",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          ),
          contentPadding: EdgeInsets.all(10),
        ),
      ),);
  }
}