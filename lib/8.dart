import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class area extends StatefulWidget {
  const area({super.key});

  @override
  State<area> createState() => _areaState();
}

TextEditingController a = new TextEditingController();
TextEditingController b = new TextEditingController();
TextEditingController c = new TextEditingController();

class _areaState extends State<area> {
  var Area;
  var S;

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
              decoration: InputDecoration(label: Text('BASE')),
            ),
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: b,
              decoration: InputDecoration(label: Text('HEIGHT')),
            ),
          ),
          // SizedBox(
          //   height: 50,
          //   width: 500,
          //   child: TextField(
          //     controller: c,
          //     decoration: InputDecoration(label: Text('length of 3rd side')),
          //   ),
          // ),
          SizedBox(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    Area = (double.parse(a.text) * double.parse(b.text)) / 2;
                  });
                }),
                child: Text('Area')),
          ),
          Text('$Area'),
        ],
      ),
    );
  }
}
