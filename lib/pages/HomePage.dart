import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Name = "ansh doshi";

    double pie = 3.14;
    String name = "Ansh Doshi";
    bool Male = true;
    num temp = 30.0;

    var day = "tuesday"; //identify variable by compliler
    const pi = 3.14; //we cant change this value
    final rnge = 3.11; //we can change this value
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hii $Name how's you brother? "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
