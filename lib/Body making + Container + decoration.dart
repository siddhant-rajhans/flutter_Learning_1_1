import 'package:flutter/material.dart';
// creating main class that runs at the start
void main(){
  //A function of flutter *runApp()* that runs a class and loads screen
  // Into runApp we pass a class which contains the statelesswidget
  runApp(fitnessApp());
}

// StatefullWidget - It can change on run time eg. Counter app +1
//StatelessWideget - It remains same and does not make changes in screen

// Using the conepet of Inheritance.. the class name is inheriting the
//funcitonality of stateless widget
class fitnessApp extends StatelessWidget{
  //Run time polymorphism
  //overriding the build widget to customise our app
  @override
  Widget build(BuildContext context) {
    // Here Material app is for Android based
    // And Cupertino is used for IOS
    return MaterialApp(
      title: "FitApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // Home page which will be loaded in our app screen
      home: HomePageScreen(), // this class is the main body
    );
  }


}
// This class is generally for the main body
class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Scaffold is used in material app to access
    // android related widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"), // Title appbar name
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50 ,
        child: Center(
          child: Container(
            width: 200,
            height: 200,

            decoration: BoxDecoration(
              color: Colors.black,
              // To give radius in a container at all corners
               //borderRadius: BorderRadius.circular(41),
              // To give radius in a container at individual corners
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
              border: Border.all(
                width: 7,
                color: Colors.cyan
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.red,
                  spreadRadius: 7
                )
              ],
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }

}