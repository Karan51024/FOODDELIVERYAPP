import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/login.dart';
import 'package:fooddeliveryapp/widget/contant_model.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

String email="", password="", name="";

TextEditingController namecontroller= new TextEditingController();

TextEditingController passwordcontroller= new TextEditingController();

TextEditingController emailcontroller= new TextEditingController();

final _formkey=GlobalKey<FormState>();

registration()async {
  if (password != null) {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      ScaffoldMessenger.of(context).showSnackBar((SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Registered successfully",
            style: TextStyle(fontSize: 20),
          ))));
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Password provided is too weak",
              style: TextStyle(fontSize: 18),
            )));
      }
      else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "account already exsists",
              style: TextStyle(fontSize: 10),
            )));
      }
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Text(""),
              ),
              Container(
                margin: EdgeInsets.only(top: 60.0,left: 20,right: 20),
                child: Column(
                  children: [
                    Center(
                        child: Image.asset("images/logo.png",
                          width: MediaQuery.of(context).size.width/2,
                          fit: BoxFit.cover,)),
                    SizedBox(height: 50.0,),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/2,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(20),
                        ),

                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              SizedBox(height: 30.0,),
                              Text("Sign Up",style: AppWidget.HeadlineTextfeildStyle(),),
                              SizedBox(height: 40.0,),
                              TextFormField(
                                controller: namecontroller,
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return 'Please Enter email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Name",hintStyle: AppWidget.semiBoldTextfeildStyle(),prefixIcon: Icon(Icons.person_outline),),
                              ),
                              SizedBox(height: 30.0),
                              TextFormField(
                                controller: namecontroller,
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return 'Please Enter email';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Email",hintStyle: AppWidget.semiBoldTextfeildStyle(),prefixIcon: Icon(Icons.email_outlined),),
                              ),
                              SizedBox(height: 30.0),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Password",hintStyle: AppWidget.semiBoldTextfeildStyle(),prefixIcon: Icon(Icons.password),),
                              ),
                              SizedBox(height: 80.0),
                              Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5722),
                                      borderRadius: BorderRadius.circular(20)),
                                  child:Center(
                                    child: Text("SIGN UP",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: "Poppins1",
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                      },
                        child: Text("Already have an account? Login",style: AppWidget.semiBoldTextfeildStyle(),))
                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}