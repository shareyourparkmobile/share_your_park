import 'package:flutter/material.dart';


class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation degOneTranslationAnimation;
  Animation rotationAnimaton;

  //get duration => null;

  

  double getRadianFromDegree(double degree){
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 250),);
    degOneTranslationAnimation = Tween(begin: 0.0, end: 1.0 ).animate(animationController);
    /*degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 75.0),
    ]).animate(animationController);*/
    rotationAnimaton = Tween(begin: 180, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {
        
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    //var size;
        return Scaffold(
          body: Container(
            //width: size.width,
            //height: size.height,
        child: Stack(
            
            
            children: <Widget> [
              Positioned(
                right: 30,
                bottom: 30,
                child: Stack(
                  children: [
                      
                      Transform.translate(
                        offset: Offset.fromDirection(getRadianFromDegree(270),degOneTranslationAnimation.value * 100),
                        child: CircularButton(
                          color: Colors.blueGrey,
                          width: 50,
                          height: 50,
                          icon: Icon(Icons.message, color: Colors.white),
                          onClick: (){},
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadianFromDegree(225),degOneTranslationAnimation.value * 100),
                        child: CircularButton(
                          color: Colors.red,
                          width: 50,
                          height: 50,
                          icon: Icon(Icons.contact_mail, color: Colors.white),
                          onClick: (){},
                        ),
                      ),
                      Transform.translate( 
                        offset: Offset.fromDirection(getRadianFromDegree(180),degOneTranslationAnimation.value * 100),
                        child: CircularButton(
                          color: Colors.orange,
                          width: 50,
                          height: 50,
                          icon: Icon(Icons.person_add, color: Colors.white),
                          onClick: (){},
                        ),
                      ),
                      CircularButton(
                        color: Colors.green,
                        width: 60,
                        height: 60,
                
                        icon: Icon(Icons.menu, color: Colors.white),
                        onClick: (){
                          if (animationController.isCompleted){
                            animationController.reverse();
                          } else {
                            animationController.forward();
                          }
                        },
                      ),
                  ],),
                  ),
            ],


        ),
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

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;
CircularButton({this.color, this.height, this.icon, this.width, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child:  IconButton(icon: icon, enableFeedback: true, onPressed: onClick),

    );
  }
}

//https://www.youtube.com/watch?v=S7KG4prI7A4
//https://medium.com/coding-with-flutter/flutter-bottomappbar-navigation-with-fab-8b962bb55013