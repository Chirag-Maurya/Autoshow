import 'package:flutter/material.dart';

class KawasakiPage extends StatelessWidget {
  const KawasakiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Kawasaki"),
          backgroundColor: Color.fromARGB(255, 50, 205, 50)),
    );
  }
}
