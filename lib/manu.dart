import 'package:flutter/material.dart';


class Manu extends StatefulWidget {
  @override
  _ManuState createState() => _ManuState();
}

class _ManuState extends State<Manu>
    with SingleTickerProviderStateMixin {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
       onPressed: (){},
      backgroundColor: Colors.black,
      elevation: 10.0,
      
      
      
       ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.yellow,
        elevation: 10.0,
        child: Container(height: 80),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}