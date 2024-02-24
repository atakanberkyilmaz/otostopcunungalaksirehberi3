import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:  FirebaseOptions(
      apiKey: "AIzaSyAd2eIR4xbDoIUT1SjkKZqCmvuL-WXDmng",
      authDomain: "otostopcunungalaksirehbe-7758e.firebaseapp.com",
      projectId: "otostopcunungalaksirehbe-7758e",
      storageBucket: "otostopcunungalaksirehbe-7758e.appspot.com",
      messagingSenderId: "832557440851",
      appId: "1:832557440851:web:56eebdf48dae9c387e8ba6",
      measurementId: "G-251C5D6RHL",
     databaseURL: 'https://otostopcunungalaksirehbe-7758e-default-rtdb.firebaseio.com/',

  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PreviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/arkaplan1.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7,
          )
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Otostopcunun Galaksi Rehberi'ne",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Hoşgeldiniz!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text(
                    "Otostopcunun Galaksi Rehberi Atakan Berk Yılmaz tarafından geliştirilen bir uygulamadır.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>HomePage(),
                      ));
                    },
                    child: Ink(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  ),
                ],

              )
          ),
        ),
      ),
    );
  }
}