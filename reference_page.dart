import 'package:flutter/material.dart';

class ReferencePage extends StatefulWidget {
  @override
  _ReferencePageState createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 247,247,1),

        body: Center(

          child: SingleChildScrollView(


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Center(
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        RawMaterialButton(
                          constraints: BoxConstraints.tight(Size(40, 40)),
                          onPressed: () {
                          },
                          child: Image(
                            image:AssetImage('image/Fill_1 (1).png'),
                            width:40,
                            height:40,
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
                                      Navigator.pop(context);
                                    },
                                    child: Image(
                                      image:AssetImage('image/4-layers.png'),
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
                  height: 570,
                ),

              ],
            ),
          ),
        ));
  }
}
