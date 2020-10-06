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
        elevation: 20.0,
        child: Row(
          children: <Widget> [
            IconButton(icon: Icon(Icons.menu), onPressed: (){}, color: Colors.white),
            IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.white),
            IconButton(icon: Icon(Icons.help_outline), onPressed: (){}, color: Colors.white),
          ],
          
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}


//https://www.youtube.com/watch?v=S7KG4prI7A4