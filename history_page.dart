import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(224, 251,250,1),

        body: Center(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Center(
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        RawMaterialButton(
                          constraints: BoxConstraints.tight(Size(66, 17)),
                          onPressed:(){
                            Navigator.pop(context);
                          },
                          child: Image(
                            image:AssetImage('image/5-layers(1).png'),
                            width:66,
                            height:17,
                          ),
                          elevation: 0.0,
                        ),

                        Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[

                                  RawMaterialButton(
                                    constraints: BoxConstraints.tight(Size(40, 40)),
                                    onPressed:(){
                                    },
                                    child: Image(
                                      image:AssetImage('image/Oval (1).png'),
                                      width:40,
                                      height:40,
                                    ),
                                    elevation: 0.0,
                                  ),

                                ]
                            )
                        ),

                      ],

                    ),

                  ),
                ),

                SizedBox(
                  height: 29,
                ),

                Center(
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Image(
                          image:AssetImage('image/history.png'),
                          width:144,
                          height:40,
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 500,
                ),

              ],

            ),
          ),
        ),

    );
  }
}
