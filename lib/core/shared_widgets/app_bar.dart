

import 'dart:io';

import 'package:flutter/material.dart';

 Widget appBar(BuildContext context,Function func) {
    final AppBar appBar = AppBar(
      title: Image.asset(
        'images/erply-logo.png',
        width: 83,
        height: 22,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.navigate_before),
        iconSize: 32,
        onPressed: func
      ),
      elevation: 0,
      actions: <Widget>[
        Container(
            padding: EdgeInsets.only(bottom: 12, right: 16),
            alignment: Alignment.bottomCenter,
            child: Text(
              "v.2.01",
              style: Theme.of(context).textTheme.overline,
            ))
      ],
    );
    if (Platform.isIOS) {
      return SafeArea(
        child: appBar,
      );
    }

    return appBar;
  }