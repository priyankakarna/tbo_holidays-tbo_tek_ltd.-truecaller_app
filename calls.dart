import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.dialpad, size: 20, color: Colors.white),
        backgroundColor: Colors.green,
        onPressed: () => print('tapped'),
      ),
      appBar: AppBar(
        title: Text('Calls'),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
