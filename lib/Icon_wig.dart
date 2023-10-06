import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(icon_wig());
}

class icon_wig extends StatefulWidget {
  const icon_wig({super.key});

  @override
  State<icon_wig> createState() => _icon_wigState();
}

class _icon_wigState extends State<icon_wig> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grey',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Icon Wig'),
            backgroundColor: Colors.black,

          ),
          body:
          
          const Center(child: Center(
              child:
                  
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.noteSticky, size: 74),
                  Icon(Icons.music_note_rounded, size: 74, color: Colors.red, )

                ],
              )
              
              // Makes Icon    
              // Icon(Icons.music_note_rounded, size: 125, color: Colors.red, )
          )
          )
      ),
    );
  }
}
