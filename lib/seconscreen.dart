import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  var getData;
  SecondScreen({required this.getData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(getData)),
    );
  }
}
