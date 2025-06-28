import 'package:flutter/material.dart';
import 'package:kingmansa/view/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < mobileWidth){
          return mobileBody;
        }
        else if(constraints.maxWidth < tabletWidth){
          return tabletBody;
        }
        else{
          return desktopBody;
        }
      }
    );
  }
}