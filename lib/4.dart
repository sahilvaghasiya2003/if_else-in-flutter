import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class total extends StatefulWidget {
  const total({super.key});

  @override
  State<total> createState() => _totalState();
}

TextEditingController cow = new TextEditingController();
TextEditingController chickens = new TextEditingController();
TextEditingController pigs = new TextEditingController();

class _totalState extends State<total> {
  var sum;
  var x;
  var y;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: cow,
              decoration: InputDecoration(label: Text('NO OF COWS ')),
            ),
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: chickens,
              decoration: InputDecoration(label: Text(' NO OF CHICKENS')),
            ),
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: pigs,
              decoration: InputDecoration(label: Text('NO OF PIGS')),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    sum = (int.parse(cow.text) * 4) +
                        (int.parse(chickens.text) * 2) +
                        (int.parse(pigs.text) * 4);
                  });
                }),
                child: Text('TOTLE LAGS')),
          ),
          Text('$sum'),
        ],
      ),
    );
  }
}
