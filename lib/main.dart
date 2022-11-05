import 'package:flutter/material.dart';
import './firstcontainer.dart';

void main(){
  runApp(loginpage());
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height:double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.lightGreen,
                        Colors.black,
                      ]
                    )
                  ),
                ),
                firstcontainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
