import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.green,
          ),
          PositionedDirectional(
            bottom: -50,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 200,
              color: Colors.blue,
            ),
          ),
          PositionedDirectional(
            top: 10,
            end: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
