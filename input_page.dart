import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  TextEditingController nameController = TextEditingController();
  String UserName = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('test'),
          ),
          body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

       TextField(

         decoration: InputDecoration(
           border: InputBorder.none,
           hintText: 'Enter Korean text'
         ),

       )

      ],

    );
  }
}
