import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_week1_1/screens/input_page.dart';

class SignUpWithEmailPage extends StatefulWidget {
  @override
  _SignUpWithEmailPageState createState() => _SignUpWithEmailPageState();
}

class _SignUpWithEmailPageState extends State<SignUpWithEmailPage> {
  final formKey = new GlobalKey<FormState>();

  String _name;
  String _email;
  String _password;
  String _confirmpassword;

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      // Email & password matched our validation rules
      // and are saved to _email and _password fields.
      validateAndSave();
    }
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print('Form is valid Email: $_email, password: $_password');
    } else {
      print('Form is invalid Email: $_email, password: $_password');
    }
  }

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal[200], //배경색 지정
      body:

      new Container(
        padding: EdgeInsets.all(16),
        child: new Form(
            key: formKey,
            child: Center(

              child: SingleChildScrollView(

                child: new Column(

                  mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬

                  children: <Widget>[

                    SizedBox( //공백
                      height: 150.0,
                    ),

                    new TextFormField(
                      decoration: new InputDecoration(labelText: 'Name',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          )),


                    ),

                    new TextFormField( //이메일 입력 부분
                      decoration: new InputDecoration(labelText: 'e-mail',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          )),


                      validator: (val) =>
                      !val.contains('@') || !val.contains('.') ? 'Invalid email address' : null,
                      onSaved: (val) => _email = val,


                    ),

                    new TextFormField( //패스워드 입력 부분
                      obscureText: true,
                      decoration: new InputDecoration(
                          labelText: 'password',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          )),

                      validator: (val) =>
                      val.length < 6 ? 'Must be 6 characters or more' : null,
                      onSaved: (val) => _password = val,

                    ),

                    new TextFormField(
                      decoration: new InputDecoration(labelText: 'Confirm password',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          )),


                      validator: (val) =>
                      !val.contains('@') || !val.contains('.') ? 'Passwords do not match' : null, //조건 어케하지~~보류
                      onSaved: (val) => _email = val,


                    ),


                    SizedBox(
                      height: 15.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        Column(
                          children: <Widget>[
                            Text("I agree to the Terms and Conditions and Privacy Policy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                                letterSpacing: 1.0,
                              ),),
                          ],
                        ),

                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Checkbox(//체크박스 부분 - 모양만 구현해 둠

                                value: rememberMe,
                                activeColor: Colors.white,
                                checkColor: Colors.teal[200],

                                onChanged: _onRememberMeChanged,

                                // x
                              ),
                            ]

                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15.00, //박스 크기 조정함
                    ),

                    ButtonTheme(
                      minWidth: 250.0,
                      height: 33.0,
                      child: new RaisedButton( //사인업 버튼 부분
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),// 박스 모서리 둥글기 조정
                            side: BorderSide(color: Colors.white)), //박스 테두리 색 조정
                        color: Colors.white, //박스 내부 색 조정
                        textColor: Colors.black45,
                        child: Text("Sign up",
                            style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0,)),

                        onPressed:_submit,
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

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
                      height: 100.0,
                    ),


                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}

