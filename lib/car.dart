import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car>{
    List<DropdownMenuItem<String>> listtailles = [];
    String def = null;

      void tailles() {
        listtailles.clear();
        listtailles.add(
          DropdownMenuItem(
            value: 'Large',
            child: Text(
              'Large',
              style: TextStyle(fontSize: 17, color: Colors.grey))
          )
        );
        listtailles.add(
          DropdownMenuItem(
            value: 'Medium',
            child: Text(
              'Medium',
              style: TextStyle(fontSize: 17, color: Colors.grey))
          )
        );
        listtailles.add(
          DropdownMenuItem(
            value: 'Small',
            child: Text(
              'Small',
              style: TextStyle(fontSize: 17, color: Colors.grey))
          )
        );
      }
}
     
  

  

  @override
  Widget build(BuildContext context) {
    tailles();
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget> [
                 Container(
                    margin: EdgeInsets.only(right: 160, top: 40),
                    child: Text( 
                      "Quel est ta",
                      style: TextStyle(color: Colors.pink, fontSize: 28)
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 160, top: 80),
                    child: Text(
                      "voiture?",
                      style: TextStyle(color: Colors.pink, fontSize: 28)
                      ),
                  ),
              ]
            ),

          Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Type de véhicule',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ),
          Container(
                        margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Le modèle',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                            
                          ),
                        ),
                      ),
           Container(
                        margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: "Plaque d'immatriculation",
                            labelStyle: TextStyle(color: Colors.pink[200]),
                            
                          ),
                        ),
                      ),
            Container(
              margin: EdgeInsets.symmetric(vertical:5.0, horizontal: 50),
              child: Text(
                'Taille',
                style: TextStyle(color: Colors.pink, fontSize: 20)
              ),
                        
                        /*child:  TextField(
                      
                         obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: "Taille",
                            labelStyle: TextStyle(color: Colors.pink[200]),
                            
                          ),
                        
                        ),*/
                        
                      ),
                      Container(
                        child: DropdownButtonFormField(
                          items: listtailles,
                          value: def,
                          elevation: 10,
                           onChanged: (value){
                             def = value;
                             setState((){});
                           }
                           ),
                      ),

          Container(
               margin: EdgeInsets.only(left: 250, top: 20),
                 child: FloatingActionButton(
            mini: true,
            onPressed: (){},
            child: Icon(Icons.check, color: Colors.white),
            backgroundColor: Colors.pink,
            ),
             ),



          ],

        ),
      ),
    );
    
  }
}

