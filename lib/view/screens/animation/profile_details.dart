import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:start_flutter/view_model/data/local/shared_keys.dart';
import 'package:start_flutter/view_model/data/local/shared_preference.dart';

class ProfileDetailsScreen extends StatelessWidget {
  ProfileDetailsScreen({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();

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
                  radius: 100,
                  backgroundImage: Image.network(
                      'https://imgv3.fotor.com/images/blog-cover-image/10-profile-picture-ideas-to-make-you-stand-out.jpg')
                      .image,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: name,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () async {
                  await Shared.set(SharedKeys.name, name.text);
                  Navigator.pop(context);
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
