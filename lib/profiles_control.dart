import 'package:flutter/material.dart';

class ProfileControl extends StatelessWidget {

  final Function addProfile;

  ProfileControl(this.addProfile) {
    print('[ProfileControl] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[ProfileControl] build()');    
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addProfile('Coolest Profile');
            },
            child: Text('Add Profile'),
          );
  }
}


