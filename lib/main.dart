import 'package:flutter/material.dart';
import 'package:images_sliders/animation.dart';
import 'package:images_sliders/shop.dart';
import 'package:page_transition/page_transition.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Shop(),
 )
);

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin{
  // Here let us learn the animation controller
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this, duration: Duration(milliseconds: 400)
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0
      ).animate(_scaleController)..addStatusListener((status) {
       if (status == AnimationStatus.completed){
         Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Shop()));
       }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nice.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
               begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeAnimation(1, Text("Brand New Prespective", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                FadeAnimation(1.3, Text("Let us Start with collection summer ♥", style: TextStyle(color: Colors.white, fontSize: 16)),),
                SizedBox(height: 35,),
                InkWell(
                  onTap: () {
                    setState(() {
                      hide = true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                      scale: _scaleAnimation.value,
                    child: FadeAnimation(1.5, Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: hide == false ? Text("Get Start", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),) : Container(),
                      ),
                    ),
                  ),
                ),
                ),
                ),
                SizedBox(height: 22,),
                   FadeAnimation(1.7,Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text("Create Account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                ),),
                SizedBox(height: 18,),
                ]
               )
          ),
        ),
      ),
    );
  }
}
