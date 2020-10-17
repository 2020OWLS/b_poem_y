import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_week1_1/screens/login_page.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart'; //버튼 패키지
import 'package:clickabletext/clickabletext.dart';
import 'package:project_week1_1/screens/login_page.dart';
import 'package:project_week1_1/screens/signup_with_email_page.dart'; //클릭 패키지 : 누르는게 보임

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
                      image:AssetImage('image/21-layers.png'),
                      width:154,
                      height:112,
                    ),

                    SizedBox(
                      height: 70.0,
                    ),


                    GoogleSignInButton(
                      onPressed: () {/* ... */},
                      darkMode: true, // default: false
                    ),

                    SizedBox(
                      height: 10.0,
                    ),

                    ButtonTheme(
                      minWidth: 220.0,
                      height: 50.0,
                      child: new RaisedButton( //사인업 버튼 부분
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),// 박스 모서리 둥글기 조정
                            side: BorderSide(color: Colors.white)), //박스 테두리 색 조정
                        color: Color.fromRGBO(148, 208,206,1), //박스 내부 색 조정
                        textColor: Colors.white,


                        child: Text("Sign up with email",
                            style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0,)),
                        onPressed:(){
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder:(context)=> SignUpWithEmailPage())
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 50,),

                    ButtonTheme(
                      minWidth: 180.0,
                      height: 33.0,
                      child: new RaisedButton( //사인업 버튼 부분
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),// 박스 모서리 둥글기 조정
                            side: BorderSide(color: Colors.white)), //박스 테두리 색 조정
                        color: Colors.white, //박스 내부 색 조정
                        textColor: Colors.black45,


                        child: Text("Cancle",
                            style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0,)),

                        onPressed:(){
                          Navigator.pop(context);
                        },
                      ),
                    ),


                    SizedBox(
                      height: 20.0,
                    ),



                  ]
              ),

            ],
          ),
        ),
      ),
    );
  }
}
