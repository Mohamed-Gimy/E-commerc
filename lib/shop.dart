import 'package:flutter/material.dart';
import 'package:images_sliders/animation.dart';
import 'package:images_sliders/categories.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Column(
          children: <Widget>[
            FadeAnimation(1,
            Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/girl.jpg'),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.2),
                      ]
                  )
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [FadeAnimation(1.2,
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.white),onPressed: () {},),
                        ),FadeAnimation(1.3,
                        IconButton(
                          icon: Icon(Icons.shopping_cart, color: Colors.black),
                          onPressed: () {

                          },),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeAnimation(1.5,Text("Our New Product", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),),),
                          SizedBox(height: 10,),
                          FadeAnimation(1.7, Row(
                            children: [
                              Text("View More", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),),
                              SizedBox(height: 10,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,
                                size: 12,)
                            ],
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
            ),
            FadeAnimation(1.4,
              Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories", style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),),
                    Text("All", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      makeCategories(image: 'images/fad.jpg', title: 'Beauty', tag: 'Beauty'),
                      makeCategories(image: 'images/clothes.jpg', title: 'Clothes',  tag: 'Clothes'),
                      makeCategories(image: 'images/htm.jpg', title: 'Shoes',  tag: 'Shoes'),
                      makeCategories(image: 'images/per.jpg', title: 'Perfum', tag: 'Perfum'),
                      makeCategories(image: 'images/glass.jpg', title: 'Glass', tag: 'Glass'),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Selling", style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),),
                    Text("All", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      makeBestSelling(image: 'images/per.jpg', title: 'Per>Women'),
                      makeBestSelling(image: 'images/mak.jpg', title: 'Men'),
                      makeBestSelling(image: 'images/perman.jpg', title: 'Per>Men'),
                      makeBestSelling(image: 'images/htl.jpg', title: 'Shoes'),
                      makeBestSelling(image: 'images/glass.jpg', title: 'Glass'),
                      makeBestSelling(image: 'images/phone.jpg', title: 'HeadPhone')
                    ],
                  ),
                ),

              ],
            ),
          ),
            ),
         ]
      ),
      )

    );
  }
    Widget makeCategories ({image, title, tag}) {
      return AspectRatio(
          aspectRatio: 2 / 2.5,
          child: Hero(
            tag: tag,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoreiesPage(image: image, title: title, tag:tag)));
              },
               child: Material(
                 child: Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.1),
                            ]
                        )
                    ),
                    child:
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(title, style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),),
                    ),
                  ),
              ),
               ),
            ),
          )
      );
    }
      Widget makeBestSelling({image, title}){
        return AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.6),
                          Colors.black.withOpacity(.1),
                        ]
                    )
                ),
                child:
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                ),
              ),
            )
        );
      }
  }

