import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Buying Food : RMUTL'),
        backgroundColor: Color(0xFF1B4F72),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[

            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF1B4F72),
                      Color(0xFF21618C),
                      Color(0xFF2874A6),
                      Color(0xFF2E86C1),
                      Color(0xFF3498DB),
                      Color(0xFF5DADE2)
                    ],
                  )
              ),
            ),

            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 5.0,),
                    Image(
                      width: 120.0,
                      height: 120.0,
                      image: AssetImage("images/logo.png"),
                    ),
                    SizedBox(height: 10.0,),
                    Text("Buy food in RMUTL"
                      , style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    buildBoxUserID(),
                    SizedBox(height: 15.0,),
                    buildBoxPassword(),
                    SizedBox(height: 0.0,),
                    buildForgotPasswordButton(),
                    SizedBox(height: 75.0,),
                    buildSignInButton(),
                    SizedBox(height: 10.0,),
                    Text("Don't have an account?",
                      style: TextStyle(color: Colors.white60),
                    ),
                    buildDonthaveAccount(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBoxUserID() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("User Name",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 24.0)
              , prefixIcon: Icon(
            Icons.person,
            color: Colors.white,
          ),
              hintText: "Enter UserName",
              hintStyle: TextStyle(color: Colors.white60)
          ),
        ),
      ],
    );
  }

  Widget buildBoxPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Password",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 24.0)
              , prefixIcon: Icon(
            Icons.vpn_key,
            color: Colors.white,
          ),
            hintText: "Enter Password",
            hintStyle: TextStyle(color: Colors.white60)
          ),
        ),
      ],
    );
  }

  Widget buildForgotPasswordButton(){
    return Container(
      alignment: Alignment.centerLeft,
      child: FlatButton(
        onPressed: () => {},
        padding: EdgeInsets.only(left: 0.0),
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            color: Colors.white60
          ),
        ),
      ),
    );
  }

  Widget buildSignInButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => {
          //Navigator.of(context)
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Text("SIGN IN",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildDonthaveAccount(){
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => {
          //Navigator.pushReplacement(context,
          //    MaterialPageRoute(builder: (context) => LoginScreen1())
         // );
        },
        padding: EdgeInsets.only(left: 0.0),
        child: Text(
          "SIGN UP",
          style: TextStyle(
              color: Colors.white60,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
