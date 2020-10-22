import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String title;
  final Function pressHandler;

  AdaptiveFlatButton(this.title, this.pressHandler);

  @override
  Widget build(BuildContext context) => Platform.isIOS
      ? CupertinoButton(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // color: Theme.of(context).primaryColor,
          onPressed: pressHandler,
        )
      : FlatButton(
          textColor: Theme.of(context).primaryColor,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: pressHandler,
        );
}
