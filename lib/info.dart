import 'dart:html';

import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        //leading: Icon(Icons.info),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(),
      ),
    );
  }
}
