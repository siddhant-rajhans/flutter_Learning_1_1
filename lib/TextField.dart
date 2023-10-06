import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var username = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InpBox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('TextBox')),
        body:
        Center(child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  //adding controller to fetch textbox's data
                  controller: username,
                  //To disable
                  // enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Mail',
                  focusedBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Colors.orange,
                        width: 5,
                      )
                  ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 5,)
                    ),
                    suffixText: "See",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){

                      },
                    ),
                    prefixIcon: Icon(Icons.email),
                    // prefixText: "Username",

                    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.orange
      )
    )
    ),
    ),
                Container(
                  height: 25,
                ),

                TextField(
                //Custom keyboard
                  // keyboardType: TextInputType.number,
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'pass',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 5,
                      )
                  ),
                    border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              color: Colors.blue,
                            width: 5,
                          )
                      ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 5,
                        )
                    ),
                      prefixIcon: Icon(Icons.password_sharp)
                    // prefixText: "Pass",
                  ),
                ),

                ElevatedButton(onPressed: (){

                  String uname = username.text.toString();
                  String upass = pass.text;

                  print("Email: $uname, Pass: $upass");
                }, child: Text('Login'))

          
              ],
            )),
      ),
    ));
  }

}