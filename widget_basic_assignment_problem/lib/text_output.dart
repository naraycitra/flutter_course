import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {

  final String initialString;

  TextOutput({this.initialString = 'Initial String'}) {
    print('[TextOutput] Construction');
  }

  @override
  Widget build(BuildContext context) { 
    print('[TextOutput] Construction');   
    return Text(initialString);
  }
}