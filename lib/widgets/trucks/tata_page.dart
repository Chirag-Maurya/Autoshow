import 'package:flutter/material.dart';

class TataPage extends StatelessWidget {
  const TataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Tata"),
          backgroundColor: Color.fromARGB(255, 72, 106, 174)),
    );
  }
}
