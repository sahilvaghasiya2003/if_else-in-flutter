import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class prime extends StatefulWidget {
  const prime({super.key});
  

  @override
  State<prime> createState() => _primeState();
}

TextEditingController n=new TextEditingController();
  // TextEditingController ab=new TextEditingController();
class _primeState extends State<prime> {
 static var  fect=1;
  
  var m;
  var flag=0;
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
              controller: n,
              decoration: InputDecoration(label: Text('1st value')),
            ),
          ),
           
          SizedBox(
            child: 
            ElevatedButton(onPressed: (() {
              setState(() {
              m=(int.parse(n.text))/2;   
for( int i=2;i<=m;i++)    
{    
if(int.parse(n.text)%i==0)    
{    
   flag=1;  
   x='ENTER NUMBER IS NOT PRIME.' ;
break;    
}    

else{
   x='ENTER NUMBER IS PRIME.' ;

}

               }
              
             } );
              
              
            }), child: Text('fect')),
          ),
          Text('$x'),
          
        



        ],
      ),
    );
  }
}