import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Flutter',
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        // color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(),
              Text(
                'Welcome To Flutter',
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: (){},
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'Welcome To Flutter',
              ),
              Icon(
                Icons.arrow_forward,
              ),
              Text(
                'My Name Kareem Ahmed',
              ),
              Icon(
                Icons.arrow_forward,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
