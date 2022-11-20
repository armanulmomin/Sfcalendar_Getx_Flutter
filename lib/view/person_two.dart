import 'package:flutter/material.dart';
class PersonTwo extends StatelessWidget {
  const PersonTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Person Two",style: TextStyle(fontSize: 50),)),
    );
  }
}
