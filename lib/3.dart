import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class fact extends StatefulWidget {
  const fact({super.key});

  @override
  State<fact> createState() => _factState();
}

TextEditingController a = new TextEditingController();

// TextEditingController ab=new TextEditingController();
class _factState extends State<fact> {
  static var fect = 1;
  var temp;
  var x;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: a,
              decoration: InputDecoration(label: Text('1st value')),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    temp = fect;
                    for (int i = 1; i <= int.parse(a.text); i++) {
                      temp = temp * i;
                    }
                  });
                }),
                child: Text('fect')),
          ),
          Text('$temp'),
        ],
      ),
    );
  }
}
