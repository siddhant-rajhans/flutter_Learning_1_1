import 'package:flutter/material.dart';

void main(){
  runApp(Rich_Text());
}

class Rich_Text extends StatefulWidget {
  const Rich_Text({super.key});

  @override
  State<Rich_Text> createState() => _Rich_TextState();
}

class _Rich_TextState extends State<Rich_Text> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grey',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rich_text'),
          backgroundColor: Colors.black,

        ),
        body:
            // Follows the first described rich test and uses the same style unless defined again
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24
                  ),
                  children: <TextSpan>[
                TextSpan(text: 'Hey', ),
                    TextSpan(text: ' there!',style: TextStyle(color: Colors.blue, fontSize: 34, fontWeight: FontWeight.w800), ),
                    TextSpan(text: ' How', ),
                    TextSpan(text: 'r ya!',style: TextStyle(color: Colors.red, fontSize: 34, fontWeight: FontWeight.w800), ),



                  ]
                ),
              )





                // Row(
                //   children: [
                //     Text('Hi', style: TextStyle(color: Colors.grey, fontSize: 54),),
                //     Text('There!', style: TextStyle(color: Colors.blue, fontSize: 74),),
                //   ],
                // )



      ),
    );
  }
}
