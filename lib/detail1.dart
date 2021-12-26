import 'package:few/MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailer extends StatelessWidget {
  const Detailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
          },
        ),
      ),
      body: Container(
          child: Row(
            children: [
            ],
          ),
      ),

    );
  }
}
