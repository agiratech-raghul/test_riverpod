import 'package:flutter/material.dart';
import 'package:test_riverpod/dashBoard.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextShownList()),
    );
  }
}