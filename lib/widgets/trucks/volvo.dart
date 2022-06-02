import 'package:flutter/material.dart';

class VolvoPage extends StatelessWidget {
  const VolvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Volvo"),
          backgroundColor: Color.fromARGB(255, 24, 40, 113)),
    );
  }
}
