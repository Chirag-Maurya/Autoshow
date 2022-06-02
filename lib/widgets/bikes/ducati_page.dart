import 'package:flutter/material.dart';

class DucatiPage extends StatelessWidget {
  const DucatiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ducati"),
          backgroundColor: Color.fromARGB(255, 176, 14, 10)),
    );
  }
}
