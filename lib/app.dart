import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xffd84d64),
     body: Center(
       
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         
          
         children: <Widget>[
           
           Container(
             margin: EdgeInsets.only(top: 250 ),
             child: Image.asset(
         'assets/logo-syp3.png',
         width: 100,
         height: 100,
         ),
           ),
         ],
       ),

     ),
    );
  }
}