import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:start_flutter/view/screens/animation/profile_details.dart';
import 'package:start_flutter/view_model/data/local/shared_preference.dart';
import 'package:start_flutter/view_model/navigator/navigator.dart';

import '../../../view_model/data/local/shared_keys.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Hero(
                tag: 'profilePic',
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundImage: Image.network(
                          'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg')
                      .image,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                Shared.get(SharedKeys.name) ?? 'No Name',
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () {
                  Navigation.push(context, ProfileDetailsScreen());
                },
                child: Text('Edit', style: TextStyle(
                  fontSize: 10.sp,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
