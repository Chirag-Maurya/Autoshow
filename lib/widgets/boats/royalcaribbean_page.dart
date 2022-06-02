import 'package:flutter/material.dart';

class RoyalCaribbeanPage extends StatelessWidget {
  const RoyalCaribbeanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Royal Caribbean Cruises Ltd."),
          backgroundColor: Color.fromARGB(255, 19, 58, 124)),
    );
  }
}
