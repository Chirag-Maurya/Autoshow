import 'package:flutter/material.dart';

class MasterCraftPage extends StatelessWidget {
  const MasterCraftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("MasterCraft"),
          backgroundColor: Color.fromARGB(255, 19, 58, 124)),
    );
  }
}
