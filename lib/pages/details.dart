import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 60, left: 15, right: 20),
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
          Image.asset(
            "images/salad2.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mediterranean",
                    style: AppWidget.semiBoldTextfeildStyle(),
                  ),
                  Text("Chickpea Salad", style: AppWidget.boldTextfeildStyle()),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  if (a > 1) {
                    --a;
                  }
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
              ),
              SizedBox(width: 20),
              Text(
                a.toString(),
                style: AppWidget.semiBoldTextfeildStyle(),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  ++a;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("It's full of fresh veggies, tomatoes, spices, feta, olives, and protein-packed chickpeas! The best part about this chopped Greek salad recipe is that there's no cooking required; all you'll do is chop the veggies and toss them with the light lemon dressing.",
          style: AppWidget.LightTextfeildStyle(),),
          SizedBox(height: 30),
          Row(
            children: [
              Text("Delivery Time",style: AppWidget.semiBoldTextfeildStyle(),),
              SizedBox(width: 20),
              Icon(Icons.alarm,color: Colors.black,),
              SizedBox(width: 10),
              Text("30 Min",style: AppWidget.semiBoldTextfeildStyle(),),
            ],),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Total Price",style: AppWidget.semiBoldTextfeildStyle(),),
                    Text("\$28",style: AppWidget.HeadlineTextfeildStyle(),),
                  ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                  borderRadius:BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Add To Cart",style:TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'poppins' ),),
                      SizedBox(width: 30),
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration:BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    ));
  }
}
