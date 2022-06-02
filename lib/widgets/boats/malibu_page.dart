import 'package:flutter/material.dart';

class MalibuPage extends StatelessWidget {
  const MalibuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Malibu Boats, Inc"),
          backgroundColor: Color.fromARGB(255, 19, 58, 124)),
    );
  }
}
