import 'package:flutter/material.dart';
import 'package:share_your_park/name.dart';


class Inscri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
   final data = MediaQuery.of(context); 
  return Scaffold(
        body: Container(
                  child: SingleChildScrollView(
                                      child: Column(
                      children: <Widget>[
                        
                        
                        // RETOUR
                        Stack(
                          children: <Widget>[
                           Row(
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Colors.pink,
                                  ),
                                Text(
                                  "Retour",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 14,
                                  ),
                                  ),
                              ],
                            ),
                          ],
                        ),
          
                     
                      //AVATAR
                        Stack( 
                          alignment: const Alignment(-0.9, 0.8),
                          children: <Widget> [
                          CircleAvatar(
                            radius: 68,
                            backgroundColor: Colors.pink,
                            child:  CircleAvatar(
                                      backgroundImage: AssetImage('assets/profil.jpeg'),
                                      radius: 60,  
                                    ),
                            ), 
                            Icon(Icons.add_circle  ),
                             ],
                             
                        ),
                      SizedBox(height: 40,),
                      //TEXTFIELD
                      Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Nom',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ),  
                      Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Prénom',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ),  
                       Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ),
                       Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: false,
                          decoration: InputDecoration(
                           
                            //border: OutlineInputBorder(),
                            labelText: 'Téléphone',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ),
                       Container(
                        margin: EdgeInsets.symmetric(vertical:5, horizontal: 50),
                        child:  TextField(
                      
                          obscureText: true,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'Mot de passe',
                            labelStyle: TextStyle(color: Colors.pink[200]),
                          ),
                        ),
                      ), 

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        
                         FlatButton(
                                  
                                  color: Colors.pink,
                                  onPressed: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder:(BuildContext context){
                                          return Name();
                                        }
                                      )
                                  );
                                  }, 
                                
                                  child: Text(
                                    "C'est good",
                                    style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                            ),
                      ],
                      )
                      
                     

                    ],
                    ),
                  ),
                ),
                   
              );
            }
          }


          







 