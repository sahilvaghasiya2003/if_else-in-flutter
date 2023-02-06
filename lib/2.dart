import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class min extends StatefulWidget {
  const min({super.key});

  @override
  State<min> createState() => _minState();
}

TextEditingController a = new TextEditingController();

// TextEditingController ab=new TextEditingController();
class _minState extends State<min> {
  var sec;

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
              decoration: InputDecoration(label: Text('MINUTE')),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    sec = int.parse(a.text) * 60;
                  });
                }),
                child: Text('sum')),
          ),
          Text("seconed =" + '$sec'),
        ],
      ),
    );
  }
}
