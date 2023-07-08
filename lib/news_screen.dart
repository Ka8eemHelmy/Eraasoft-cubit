import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                          Text('Business'),
                        ],
                      ),
                    ),
                    Center(
                      child: Text('Sporsts'),
                    ),
                    Center(
                      child: Text('Weather'),
                    ),
                  ],
                ),
              ),
              TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                onTap: (int value){},
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.business_center_sharp,
                    ),
                    text: 'Business',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.sports_baseball,
                    ),
                    text: 'Sports',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.ac_unit_outlined,
                    ),
                    text: 'Weather',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
