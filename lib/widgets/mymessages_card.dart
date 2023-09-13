import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/colors.dart';

class MyMessagesCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessagesCard({super.key,required this.message,required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            ),
          color: messageColor,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Stack(
            children:  [
              Padding(padding: EdgeInsets.only(
                left: 10,
                right: 30,
                top: 5,
                bottom: 20,
              ),
              child: Text(
                message,
                style:TextStyle(fontSize: 16)
                ),),
                Positioned(
                right: 10,
                bottom: 4,
                  child: Row(
                  children: [
                    Text(date,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white60),),
                      SizedBox(width: 5,),
                      Icon(Icons.done_all,color: Colors.white60,)
                  ],
                ))
            ],
          ),
        ),),
        
    );
  }
}