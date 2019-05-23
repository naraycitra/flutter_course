import 'package:flutter/material.dart';

import './profiles.dart';
import './profiles_control.dart';

class ProfilesManager extends StatefulWidget {
  final String startingProfile;

  ProfilesManager({this.startingProfile}) {
    print('[ProfilesManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProfilesManager Widget] createState()');
    return _ProfileManagerState();
  }
}

class _ProfileManagerState extends State<ProfilesManager> {
  List<String> _profiles = [];

  @override
  void initState() {
    print('[_ProfilesManagerState State] initState()');
    super.initState(); // super.initState() recommend to move at the begining
    _profiles.add(widget.startingProfile);
  }

  @override
  void didUpdateWidget(ProfilesManager oldWidget) {
    print('[_ProfilesManagerState State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProfile(String profile) {
    setState(() {
      _profiles.add(profile);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[_ProfilesManagerState State] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProfileControl(_addProfile),
        ),
        Expanded(child: Profiles(_profiles),)
      ],
    );
  }
}
