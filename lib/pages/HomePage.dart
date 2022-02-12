import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

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
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "First App",
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
