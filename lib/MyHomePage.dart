import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/name.json").then((value){
      info= json.decode(value);
    });
  }
  @override
  void initState(){
    super.initState();
    setState(() {
    });
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Цаг агаар"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[350],
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
                hintText: "Улсаа оруулна уу!",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                ),
                hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: info.length,
                    itemBuilder: (_, i) {
                      return Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: (Row(
                              children: [
                                Text(
                                  info[i]["name"],
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          )
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
