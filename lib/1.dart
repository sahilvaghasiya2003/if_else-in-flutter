import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

TextEditingController email = new TextEditingController();
TextEditingController pwd = new TextEditingController();

class _adminState extends State<admin> {
  var admin;
  var x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            SizedBox(
              height: 50,
              width: 500,
              child: TextField(
                controller: email,
                decoration: InputDecoration(label: Text('EMAIL:')),
              ),
            ),
            SizedBox(
              height: 50,
              width: 500,
              child: TextField(
                controller: pwd,
                obscureText: true,
                decoration: InputDecoration(label: Text('PASSWORD:')),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      if ((email.text == 'admin' || email.text == 'ADMIN') &&
                          (pwd.text == 'admin' || pwd.text == 'ADMIN')) {
                        x = 'Welcome';
                      } else {
                        x = 'Enter valid email and password';
                      }
                      ;
                    });
                  }),
                  child: Text('admin'),)),
            
             SizedBox(height: 30,),
            // Text('$admin'),
            Text('$x',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
         ) ],
        ),
      ),
    );
  }
}
