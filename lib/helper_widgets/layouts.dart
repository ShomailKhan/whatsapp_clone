import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({
    super.key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  });
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 600){
          return mobileScreenLayout;
        }else{
          return webScreenLayout;
        }
      },
    );
  }
}
