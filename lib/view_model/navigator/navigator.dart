

import 'package:flutter/material.dart';

class Navigation{
  static void push(context, Widget child){
    Navigator.push(context, MaterialPageRoute(builder: (context) => child,));
  }

  static void pushReplacement(context, Widget child){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => child,
      ),
          (route) => false,
    );
  }
}