import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final  Widget webScreenLayout;
  const ResponsiveLayout({super.key,required this.webScreenLayout,required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        //web screen
      if(constraints.maxWidth >900) {
        return webScreenLayout;
      }
      //mobile screen
      else {
        return mobileScreenLayout;
      }
      },);
  }
}