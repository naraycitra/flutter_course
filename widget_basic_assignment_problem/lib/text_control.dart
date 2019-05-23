import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  String inputText;

  TextControl({this.inputText = 'Inputed Text'}) {
    print('[TextControl] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  @override
  Widget build(BuildContext context) {
    print('[TextControl] build()');
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            child: Text('Change Text'),
            onPressed: () {
              setState(() {
                widget.inputText = 'Change Text';
              });
            },
          ),
        ),
        TextOutput(
          initialString: widget.inputText,
        )
      ],
    );
  }
}
