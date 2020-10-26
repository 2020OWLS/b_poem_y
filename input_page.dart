import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_week1_1/screens/reference_page.dart';
import 'package:project_week1_1/screens/history_page.dart';

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
          body: MyPage(),
      ),
    );
  }
}


  class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 247,247,1),

    body: Center(

    child: SingleChildScrollView(
    child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[

            Center(
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    SizedBox(
                      height:100,
                    ),

                    FlatButton(
                        child:  Image(
                          image:AssetImage('image/5-layers.png'),
                          width:40,
                          height:40,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => ReferencePage())
                          ); // forget 페이지로 이동
                        },
                      padding: EdgeInsets.all(1),
                      shape: CircleBorder(),
                    ),

                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[

                              RawMaterialButton(
                                constraints: BoxConstraints.tight(Size(40, 40)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(builder: (context) => HistoryPage())
                                  );
                                },
                                child: Image(
                                  image:AssetImage('image/8-layers.png'),
                                  width:40,
                                  height:40,
                                ),
                                shape: new CircleBorder(),
                                elevation: 0.0,
                              ),

                              RawMaterialButton(
                                constraints: BoxConstraints.tight(Size(40, 40)),
                                onPressed: (){
                                },
                                child: Image(
                                  image:AssetImage('image/2-layers.png'),
                                  width:40,
                                  height:40,
                                ),
                                shape: new CircleBorder(),
                                elevation: 0.0,
                              ),


                              RawMaterialButton(
                                constraints: BoxConstraints.tight(Size(40, 40)),
                                onPressed: (){
                                },
                                child: Image(
                                  image:AssetImage('image/Oval (1).png'),
                                  width:40,
                                  height:40,
                                ),
                                shape: new CircleBorder(),
                                elevation: 0.0,
                              ),

                            ]
                        )
                    ),

    ],
                ),
              ),
            ),

            Center(
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[



                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[

                              FlatButton(
                                child:  Image(
                                  image:AssetImage('image/Sign_Out_.png'),
                                  width:71,
                                  height:17,
                                ),
                                onPressed: (){
                                },
                              ),

                            ]
                        )
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 150.0,
            ),

           TextField(

             maxLines: 5,

             textAlign: TextAlign.center,
               style: TextStyle(
                   fontSize: 48.0,
                   height: 2.0,
                   color: Color.fromRGBO(60, 60,59,1)
               ),

             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: 'input sentence'
             ),

           ),

            SizedBox(
              height: 150.0,
            ),

          ],



        ),
      ),




    )
    );
  }
}
