import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart'; //버튼 패키지
import 'package:project_week1_1/screens/input_page.dart';
import 'screens/login_page.dart'; //로그인 페이지 받아오기
import 'package:clickabletext/clickabletext.dart'; //클릭 패키지 : 누르는게 보임
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirinae', //앱 이름
      home: Grade(), // 제일 먼저 보여질 홈

    );
  }
}

class Grade extends StatelessWidget { //첫번째 메인 화면 구성
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal[200],

      body: Center(

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Column(
                  mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
                  children: <Widget>[

                    SizedBox(
                      height: 50.0,
                    ),


                    Image(
                      image:AssetImage('image/20-layers.png'),
                    ),

                    SizedBox(
                      height: 70.0,
                    ),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder:(context)=> LoginPage())
                          );
                          // 로그인 페이지로 이동
                        },

                        child: Image(
                          image: AssetImage('image/e-mail.png'),
                          fit: BoxFit.cover,
                          height: 15,
                          width: 60,
                        )
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    GestureDetector(
                        onTap: (){},

                        child: Image(
                          image: AssetImage('image/Facebook_Copy.png'),
                          fit: BoxFit.cover,
                          height: 30,
                          width: 16,
                        )
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    GestureDetector(
                        onTap: (){},

                        child: Image(
                          image: AssetImage('image/Twitter_Copy.png'),
                          fit: BoxFit.cover,
                          height: 25,
                          width: 30,
                        )
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    GestureDetector(
                        onTap: (){},

                        child: Image(
                          image: AssetImage('image/Bitmap_Copy.png'),
                          fit: BoxFit.cover,
                          height: 30,
                          width: 28,
                        )
                    ),

                    SizedBox(
                      height: 30.0,
                    ),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder:(context)=> InputPage())
                          );
                          // 로그인 페이지로 이동
                        },

                        child: Image(
                          image: AssetImage('image/Guest.png'),
                          fit: BoxFit.cover,
                          height: 15,
                          width: 60,
                        )
                    ),


                    SizedBox(
                      height: 30.0,
                    ),


                    FlatButton(
                      child: Text('x',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),
                      onPressed: (){
                       SystemNavigator.pop();
                      },
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

