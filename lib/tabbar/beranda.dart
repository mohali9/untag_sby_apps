import 'package:flutter/material.dart';
import 'package:flutter_parallax/flutter_parallax.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          new Parallax.inside(
            child: new Image.asset('img/bg.jpg'),
            mainAxisExtent: 200.0,
          ),
          new Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: new Text("KOMPETENSI KEAHLIAN"),
            ),
          ),
        ],
      ),
      // margin: const EdgeInsets.only(bottom: 388),
      // child: Image.asset('img/bg.jpg'),
    );
  }
}

// child: GridView.count(
//         primary: false,
//         padding: const EdgeInsets.all(20),
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         crossAxisCount: 2,
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               children: <Widget>[
//                 new Image.asset('img/smkn1.png'),
//                 const Text(' unravel at the'),
//               ],
//             ),
//             color: Colors.teal[100],
//           ),
//           Container(
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               children: <Widget>[
//                 new Image.asset('img/smkn1.png'),
//                 const Text(' unravel at the'),
//               ],
//             ),
//             color: Colors.teal[100],
//           ),
//         ],
//       ),
