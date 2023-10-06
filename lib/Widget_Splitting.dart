import 'package:flutter/material.dart';

void main(){
  runApp( const MaterialApp(
      title: 'callBACK',
      debugShowCheckedModeBanner: false,
      home: myapp()));
}


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => MyappState();
}

class MyappState extends State<myapp> {
  callback(){
    print('Clicked!!!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Callback',
        debugShowCheckedModeBanner: false,
        home:  Scaffold(
            appBar: AppBar(
          title: Center(child: const Text('Custom Widget')),
        ),
            body:
                // Using custom classes to make the same UI faster
            Container(
              child: const Column(
                children: [
                  Prof_Card(),
                  name_List(),
                  horz(),
                  redz(),



                  // Expanded(flex: 1 ,
                  //     child: Container(
                  //       color: Colors.cyanAccent,
                  //       child: ListView.builder(itemBuilder: (context, index) => const Padding(
                  //         padding: EdgeInsets.all(11.0),
                  //         child: SizedBox(
                  //           width: 100,
                  //           child: CircleAvatar(
                  //             backgroundColor: Colors.green,
                  //           ),
                  //         ),
                  //       ), itemCount: 10, scrollDirection: Axis.horizontal,
                  //       ),
                  //     )),
                  // Expanded(flex: 4,
                  //     child: Container(
                  //       color: Colors.red,
                  //       child: ListView.builder(itemBuilder: (context, index) => const ListTile(
                  //         leading: CircleAvatar( ),
                  //         title: Text('Name'),
                  //         subtitle: Text('No.'),
                  //         trailing: Icon(Icons.delete),
                  //       ),),
                  //     )),
                  // Expanded(flex: 1 ,
                  //     child: Container(
                  //       color: Colors.green,
                  //       child: ListView.builder(itemBuilder: (context, index) =>
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Container(
                  //               width: 200,
                  //               decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(11),
                  //                   color: Colors.blue
                  //               ),
                  //             ),
                  //           ), itemCount: 10, scrollDirection: Axis.horizontal
                  //         ,),
                  //     )),
                  // Expanded(flex: 1 ,
                  //     child: Container(
                  //       color: Colors.yellow,
                  //       child: GridView.count(crossAxisCount: 4,
                  //         scrollDirection: Axis.vertical,
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(11),
                  //                 color: Colors.red,
                  //               ),
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(11),
                  //                 color: Colors.red,
                  //               ),
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(11),
                  //                 color: Colors.red,
                  //               ),
                  //             ),
                  //           ),
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(11),
                  //                 color: Colors.red,
                  //               ),
                  //             ),
                  //           ),
                  //
                  //         ],
                  //       ),
                  //     )
                  // ),

                ],
              ),
            )

        ));
  }
}

class Prof_Card extends StatelessWidget {
  const Prof_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(flex: 1 ,
        child: Container(
          color: Colors.cyanAccent,
          child: ListView.builder(itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ), itemCount: 10, scrollDirection: Axis.horizontal,
          ),
        ));
  }
}

class name_List extends StatelessWidget {
  const name_List({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(flex: 4,
        child: Container(
          color: Colors.red,
          child: ListView.builder(itemBuilder: (context, index) => const ListTile(
            leading: CircleAvatar( ),
            title: Text('Name'),
            subtitle: Text('No.'),
            trailing: Icon(Icons.delete),
          ),),
        ));
  }
}

class horz extends StatelessWidget {
  const horz({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1 ,
        child: Container(
          color: Colors.green,
          child: ListView.builder(itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                  ),
                ),
              ), itemCount: 10, scrollDirection: Axis.horizontal
            ,),
        ));
  }
}

class redz extends StatelessWidget {
  const redz({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1 ,
        child: Container(
          color: Colors.yellow,
          child: GridView.count(crossAxisCount: 4,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.red,
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}








// Creating manual complex UI
// class MyappState extends State<myapp> {
//   callback(){
//     print('Clicked!!!');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Callback',
//         debugShowCheckedModeBanner: false,
//         home:  Scaffold(appBar: AppBar(
//           title: Center(child: const Text('Custom Widget')),
//         ),
//             body:
//             Container(
//               child: Column(
//                 children: [
//
//
//                   Expanded(flex: 1 ,
//                       child: Container(
//                         color: Colors.cyanAccent,
//                         child: ListView.builder(itemBuilder: (context, index) => const Padding(
//                           padding: EdgeInsets.all(11.0),
//                           child: SizedBox(
//                             width: 100,
//                             child: CircleAvatar(
//                               backgroundColor: Colors.green,
//                             ),
//                           ),
//                         ), itemCount: 10, scrollDirection: Axis.horizontal,
//                         ),
//                       )),
//
//
//
//                   Expanded(flex: 4,
//                       child: Container(
//                         color: Colors.red,
//                       child: ListView.builder(itemBuilder: (context, index) => const ListTile(
//                         leading: CircleAvatar( ),
//                         title: Text('Name'),
//                         subtitle: Text('No.'),
//                         trailing: Icon(Icons.delete),
//                       ),),
//                       )),
//
//
//
//
//                   Expanded(flex: 1 ,
//                       child: Container(
//                         color: Colors.green,
//                       child: ListView.builder(itemBuilder: (context, index) =>
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             width: 200,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(11),
//                               color: Colors.blue
//                             ),
//                           ),
//                         ), itemCount: 10, scrollDirection: Axis.horizontal
//                         ,),
//                       )),
//
//
//                   Expanded(flex: 1 ,
//                       child: Container(
//                         color: Colors.yellow,
//                         child: GridView.count(crossAxisCount: 4,
//                         scrollDirection: Axis.vertical,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(11),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(11),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(11),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(11),
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//
//                         ],
//                         ),
//                       )
//                   ),
//
//                     ],
//               ),
//             )
//
//         ));
//   }
// }
