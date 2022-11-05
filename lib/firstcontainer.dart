import 'package:flutter/material.dart';

class firstcontainer extends StatefulWidget {

  @override
  State<firstcontainer> createState() => _firstcontainerState();
}

class _firstcontainerState extends State<firstcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: 320,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Colors.lightGreen,
            ]
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [BoxShadow(
            blurRadius: 25.0
        ),],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.lightGreen),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Email',
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email, color: Colors.lightGreen,),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )
                    ),
                  ),
                  onChanged: (String value) {
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter email' : null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.lightGreen),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.password, color: Colors.lightGreen),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent
                        )
                    ),
                  ),
                  onChanged: (String value) {
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter password' : null;
                  },
                ),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Login'),
                  color: Colors.black,
                  textColor: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
