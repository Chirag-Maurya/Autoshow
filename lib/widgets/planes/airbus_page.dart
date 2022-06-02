import 'package:flutter/material.dart';

class AirbusPage extends StatelessWidget {
  const AirbusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Airbus"),
          backgroundColor: Color.fromARGB(255, 0, 32, 91)),
    );
  }
}
