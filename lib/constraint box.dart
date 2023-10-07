import 'package:flutter/material.dart';


void main(){
  runApp( ConstraintWig());
}


class ConstraintWig extends StatelessWidget {
  const ConstraintWig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constraint',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text('Constraint wig')),
          ),
        body:
        // ConstrainedBox can only take one child
        ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 200,
              minWidth: 200,
              minHeight: 100

            ),
            child:
            ElevatedButton(onPressed: (){}, child: const Text('value'))

            // Text('Moshi Moshi!.... Daimio Des?', style: TextStyle(fontSize: 34, fontFamily: 'FontMain', overflow: TextOverflow.fade),
            // )
        ),
      ),
    );
  }
}
