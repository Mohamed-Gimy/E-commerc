import 'package:flutter/material.dart';
import 'package:images_sliders/animation.dart';

class CategoreiesPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;
  const CategoreiesPage({Key key, this.title, this.image, this.tag})
      : super(key: key);

  @override
  _CategoreiesPageState createState() => _CategoreiesPageState();
}

class _CategoreiesPageState extends State<CategoreiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(children: [
        Hero(
          tag: widget.tag,
          child: Material(
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:[
                     Column(
                       children: [
                         SizedBox(height: 10,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             IconButton(
                               icon: Icon(Icons.arrow_back_ios, color: Colors.red,),
                               onPressed: () {
                                 Navigator.pop(context);
                               },
                             ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               FadeAnimation(1.2,
                                 IconButton(icon: Icon(Icons.search, color: Colors.red),onPressed: () {},),),
                               FadeAnimation(1.2,
                                 IconButton(
                                   icon: Icon(Icons.favorite, color: Colors.red),onPressed: () {},),
                               ),FadeAnimation(1.3,
                                   IconButton(
                                     icon: Icon(Icons.shopping_cart, color: Colors.red),
                                     onPressed: () {},
                                   )),
                             ],
                           ),
                         ]),
                       ],
                     ),
                     FadeAnimation(1.2, Text(
                      widget.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),),
                     SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
          ),
        ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                FadeAnimation(1.3,Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text("New Product", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                        Row(
                            children:[
                              Text("View More", style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey,),
                            ],
                        ),
                      ],
                  ),),
                  SizedBox(height: 30,),
                     FadeAnimation(1.2,makeProduct(image: 'images/perman.jpg', title: 'PerMen', price: '100\$'),),
                    FadeAnimation(1.3,makeProduct(image: 'images/htl.jpg', title: 'htl', price: '150\$'),),
                    FadeAnimation(1.4,makeProduct(image: 'images/glass.jpg', title: 'glass', price: '180\$'),),
                    FadeAnimation(1.5,makeProduct(image: 'images/phone.jpg', title: 'phone', price: '250\$'),),
                    FadeAnimation(1.6,makeProduct(image: 'images/per.jpg', title: 'per', price: '99\$'),),
                    FadeAnimation(1.7,makeProduct(image: 'images/clothes.jpg', title: 'clothes', price: '300\$'),)
                                ],
              ),
            ),
      ])),
    );
  }

  Widget makeProduct({image, title, price}){
       return Container(
         height: 200,
         margin: EdgeInsets.only(bottom: 15),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(13),
           image: DecorationImage(
             image: AssetImage(image),
             fit: BoxFit.cover
           )
         ),
         child: Container(
           width: double.infinity,
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(13),
               gradient:
               LinearGradient(begin: Alignment.bottomRight, colors: [
                 Colors.black.withOpacity(.8),
                 Colors.black.withOpacity(.1),
               ])
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Align(
               alignment: Alignment.topRight,
               child: Icon(Icons.favorite_border, color: Colors.yellowAccent,),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       FadeAnimation(1.3,Text(title, style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20),),),
                       FadeAnimation(1.3,Text(price, style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 15),),)
                     ],
                   ),
                   Container(
                     width: 40,
                       height: 40,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white,
                       ),
                       child: Center(
                         child: Icon(Icons.add_shopping_cart, size: 17, color: Colors.grey,),
                       )
                   )
                 ],
               ),
             ],
           ),
         ),
       );
  }
}
