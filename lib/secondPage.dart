import 'package:flutter/material.dart';
import 'package:test_riverpod/thirdPage.dart';

class SecondPage extends StatelessWidget {

  const SecondPage({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            child: Text('next'),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>
                ThirdPage()));}
        ),
      ),
    );
  }
}