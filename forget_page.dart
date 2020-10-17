import 'package:flutter/material.dart';

class ForgetPage extends StatefulWidget {
  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(148, 208,206,1),

        body: Center(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
                  children: <Widget>[

                    Image(
                      image:AssetImage('image/20-layers.png'),
                      width:154,
                      height:67,
                    ),


                      Text('Forget Page test',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),


                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
