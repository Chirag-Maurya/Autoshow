import 'package:flutter/material.dart';

class BoeingPage extends StatelessWidget {
  const BoeingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Boeing"),
          backgroundColor: Color.fromARGB(255, 0, 57, 156)),
    );
  }
}
