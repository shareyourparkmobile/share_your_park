import 'package:flutter/material.dart';


class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ 
            Stack( 
              children: <Widget>[
                Container( // hello
                  margin: EdgeInsets.fromLTRB(10.0, 50.0, 00.0, 00.0),
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:  40,
                      ),
                    ),
                ),
                 Container(
                  margin: EdgeInsets.fromLTRB(100.0, 50.0, 00.0, 00.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize:  40,
                      ),
                    ),
                ),
                 Container(
                  margin: EdgeInsets.fromLTRB(10.0, 100.0, 00.0, 00.0),
                  child: Text(
                    'Connexion',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize:  40,
                      ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(135.0, 125.0, 00.0, 00.0),
                  child: Text(
                    'ou',
                    style: TextStyle(
                      fontSize:  40,
                      ),
                    ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(140.0, 160.0, 00.0, 00.0),
                  child: Text(
                    'Inscription',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize:  40,
                      ),
                    ),
                ),
              ],
            ),
              /*SizedBox(
                height: 10,
              ),*/

              //formulaire
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                  
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                      boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  //spreadRadius: 7,
                                  blurRadius: 10,
                                  offset: Offset(4, 4), // changes position of shadow
                                ),
                              ],
                  ),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const 
                          BorderRadius.all(
                             const Radius.circular(25.0),
                          ),
                      ),
                        //borderRadius: BorderRadius.circular(20),
                        labelText: "Nom d'utilisateur",
                 ),
                ),
                 ),
                  /*SizedBox(
                height: 5,
              ),*/
                Container(
              
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
                  color: Colors.transparent,
                  child: TextField(
                    //textAlign: TextAlign.center,
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder( 
                          borderRadius: const 
                          BorderRadius.all(
                             const Radius.circular(25.0),
                          ),
                        ),
                    
                        labelText: "Adresse Email",
                 ),
                   
                ),
                
                 ),
                Container(
              
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  color: Colors.transparent,
                  child: TextField(
                    //textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder( 
                          borderRadius: const 
                          BorderRadius.all(
                             const Radius.circular(25.0),
                          ),
                        ),
                    
                        labelText: "Mot de passe",
                 ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 140),
                  child: Text( 
                    "Ou s'inscrire avec:",
                     textAlign: TextAlign.center,
                    style: TextStyle(
                      
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  
                  ),
                ),
                 
                 //inscripition via reseaux sociaux
                Container(
                  child:Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(120.0, 10.0, 00.0, 00.0),
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/fb.png'),
                          
                        ),
                      ),
                      Container(
                        
                        margin: EdgeInsets.fromLTRB(30.0, 10.0, 00.0, 00.0),
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          
                          radius: 30.0,
                          backgroundColor: Colors.white70,
                          backgroundImage: AssetImage('assets/goo.png'),
                          ),
                      ),
                       Container(
                        margin: EdgeInsets.fromLTRB(30.0, 10.0, 00.0, 00.0),
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/twitter.png'),
                          ),
                      ),
                    ],
                  ), 
                ),

                  SizedBox(
                    height: 25,
                  ),
                
                    /*Stack(
                      
                      children: <Widget>[
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 140),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                             boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 5), // changes position of shadow
                                ),
                              ],
                            color: Colors.pink,
                          ),
                          child:  Center(
                             child: Text(
                            "S'inscrire",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                              ),
                            ),
                          ),
      
                          width: 150,
                          height: 40,
                      

                        ),
                    ],
                    ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                  
                    children: <Widget>[
                      
                       FlatButton(
                                
                                color: Colors.pink,
                                onPressed: (){}, 
                              
                                child: Text(
                                  "S'inscrire",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                  ),
                                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                          ),
                    ],
                   
                  ),
                    
                    SizedBox(
                    height: 15,
                  ),

                    Container(
                    
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "Déjà membre? ",
                            style: TextStyle(
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                              ),
                           ),
                           Text(
                            "Se connecter ",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                              ),
                           ),
                        ],
                      ),
                       
                    ),
                  

   
              ],
            ),
      ),
      
    );
  }
  
}