import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  
  final List<String> profiles;

  Profiles(this.profiles) {
    print('[Profiles Widget] Constructor');
  }

  Widget _buildProfileItem(BuildContext context,int index) {
    print('[Profile Widget] _buildProfileItem');
    return Card(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/cool profile images.png"),
                    Text(profiles[index]),
                  ],
                ),
              );
  }
  
  @override
  Widget build(BuildContext context) {
    print('[Profiles Widget] build()');
    return ListView.builder(
      itemBuilder: _buildProfileItem ,
      itemCount: profiles.length ,
    );
  }
}