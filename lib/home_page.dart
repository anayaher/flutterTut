import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anay's App"),
      ),
      body: Center(
        child: Text("Welcome To My App"),
      ),
      drawer: Drawer(),
    );
  }
}
