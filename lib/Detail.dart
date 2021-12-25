import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home()
));
class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
              padding: EdgeInsets.only(top: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 30),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red[400],
                        height: 60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_back, size: 20,color: Colors.grey[400],)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(20),
                            width: 160,
                            height: 160,
                            padding: EdgeInsets.only(),
                            child: Text("Temp"),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(-4,-4),
                                      color: Colors.black.withOpacity(0.5)
                                  )]
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(20),
                            width: 160,
                            height: 160,
                            padding: EdgeInsets.only(),
                            child: Text("Temp"),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      offset: Offset(-4,-4),
                                      color: Colors.black.withOpacity(0.5)
                                  )]
                            ),
                          )
                        ],
                      ),
                    ],
                  )


                ],
              ),

            ));
  }
}

