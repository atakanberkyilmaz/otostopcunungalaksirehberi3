import 'homepage.dart';
import 'package:flutter/material.dart';

class information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Poly(),
    );
  }
}

class Poly extends StatefulWidget {
  @override
  _PolyState createState() => _PolyState();
}

class _PolyState extends State<Poly> {
  List<String> str = [
    "Otostopçunun Galaksi Rehberi Atakan Berk Yılmaz tarafından yapılan bir uygulamadır.",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCodeOnly(),
        appBar: new AppBar(
            title: new Text('Hakkında'),
            backgroundColor: const Color(0xff0c3358)),
        body: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Column(
              children: str.map((strone) {
                return Row(children: [
                  Text(
                    "\u2022",
                    style: TextStyle(fontSize: 22, color: Color(0xff0c335)),
                  ), //bullet text
                  SizedBox(
                    width: 10,
                  ), //space between bullet and text
                  Expanded(
                    child: Text(
                      strone,
                      style: TextStyle(fontSize: 20),
                    ), //text
                  )
                ]);
              }).toList(),
            ),
          ],
        ));
  }
}
