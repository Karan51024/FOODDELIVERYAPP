import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/signup.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                       height: MediaQuery.of(context).size.height/2.2,
                       decoration: BoxDecoration(
                         color: Colors.white,borderRadius: BorderRadius.circular(20),
                       ),

                       child: Column(
                         children: [
                         SizedBox(height: 30.0,),
                         Text("Login",style: AppWidget.HeadlineTextfeildStyle(),),
                         SizedBox(height: 40.0,),
                         TextField(
                          decoration: InputDecoration(
                            hintText: "Email",hintStyle: AppWidget.semiBoldTextfeildStyle(),prefixIcon: Icon(Icons.email),),
                         ),
                         SizedBox(height: 30.0),
                         TextField(
                           obscureText: true,
                           decoration: InputDecoration(
                             hintText: "Password",hintStyle: AppWidget.semiBoldTextfeildStyle(),prefixIcon: Icon(Icons.password),),
                         ),
                         SizedBox(height: 20.0),
                         Container(
                           alignment: Alignment.topRight,
                             child: Text("Forget Password?",style: AppWidget.semiBoldTextfeildStyle(),)),
                         SizedBox(height: 60.0),
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
                               child: Text("LOGIN",style: TextStyle(
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
                   SizedBox(height: 70),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                     },
                       child: Text("Don't have an account? Sign Up",style: AppWidget.semiBoldTextfeildStyle(),))
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
