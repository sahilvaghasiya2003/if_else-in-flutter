import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

TextEditingController a = new TextEditingController();
TextEditingController ab = new TextEditingController();

class _homeState extends State<home> {
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
              controller: a,
              decoration: InputDecoration(label: Text('1st value')),
            ),
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: TextField(
              controller: ab,
              decoration: InputDecoration(label: Text('1st value')),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    sum = int.parse(a.text) + int.parse(ab.text);
                    if (sum == 10 ||
                        int.parse(a.text) == 10 ||
                        int.parse(ab.text) == 10) {
                      x = 'true';
                    } else {
                      x = 'false';
                    }
                    ;
                  });
                }),
                child: Text('sum')),
          ),
          Text('$sum'),
          Text('$x'),
        ],
      ),
    );
  }
}
