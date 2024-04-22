import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/pages/details.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Karan,", style: AppWidget.boldTextfeildStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Delicious Food", style: AppWidget.HeadlineTextfeildStyle()),
            Text("Discover and Get Great Food",
                style: AppWidget.LightTextfeildStyle()),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 28),
                child: showItem()),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                    },
                    child: Container(
                      margin:EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Image.asset(
                                 "images/salad2.png",
                               height: 150,
                               width: 150,
                               fit: BoxFit.cover,),
                             Text("Fresh and Healthy",
                               style: AppWidget.semiBoldTextfeildStyle()),
                             SizedBox(height: 5),
                             Text("Veggie Taco Hash",
                               style: AppWidget.LightTextfeildStyle()),
                             SizedBox(height: 5),
                             Text("\$28",style: AppWidget.semiBoldTextfeildStyle(),)
                           ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin:EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,),
                            Text("Mix Veg Salad",
                                style: AppWidget.semiBoldTextfeildStyle()),
                            SizedBox(height: 5),
                            Text("Spicy with Onion",
                                style: AppWidget.LightTextfeildStyle()),
                            SizedBox(height: 5),
                            Text("\$28",style: AppWidget.semiBoldTextfeildStyle(),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/salad2.png",height: 120,width: 120,fit: BoxFit.cover,),
                      SizedBox(width: 20,),
                      Column(children: [
                       Container(
                         width:MediaQuery.of(context).size.width/3,
                           child: Text("Mediterranean Chickpea Salad",style: AppWidget.semiBoldTextfeildStyle(),)),
                        SizedBox(height: 5,),
                        Container(
                            width:MediaQuery.of(context).size.width/3,
                            child: Text("Honey Goat Cheese",style: AppWidget.LightTextfeildStyle(),)),
                        SizedBox(height: 5,),
                        Container(
                            width:MediaQuery.of(context).size.width/3,
                            child: Text("\$20",style: AppWidget.semiBoldTextfeildStyle(),)),
                      ],)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/salad2.png",height: 120,width: 120,fit: BoxFit.cover,),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                        Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("Veggie Taco Hash",style: AppWidget.semiBoldTextfeildStyle(),)),
                        SizedBox(height: 5,),
                        Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("Honey Goat Cheese",style: AppWidget.LightTextfeildStyle(),)),
                        SizedBox(height: 5,),
                        Container(
                            width:MediaQuery.of(context).size.width/2,
                            child: Text("\$25",style: AppWidget.semiBoldTextfeildStyle(),)),
                      ],)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
