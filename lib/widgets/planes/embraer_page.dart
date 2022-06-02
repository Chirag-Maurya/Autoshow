import 'package:flutter/material.dart';

class EmbraerPage extends StatelessWidget {
  const EmbraerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Embraer"),
          backgroundColor: Color.fromARGB(255, 0, 103, 177)),
    );
  }
}
