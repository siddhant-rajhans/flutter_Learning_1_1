import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(position_wig());
}

class position_wig extends StatefulWidget {
  const position_wig({super.key});

  @override
  State<position_wig> createState() => _position_wigState();
}

class _position_wigState extends State<position_wig> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grey',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Position'),
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
