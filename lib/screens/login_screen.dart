import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otostopcunungalaksirehberi3/screens/signup_screen.dart';
import '../homepage.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff0c3358),
          title: const Text(
            "Giriş Yap",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
                fontSize: 25),
          ),
        ),
        drawer: DrawerCodeOnly(),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 400,
                child: Image.asset(
                  "assets/images/login1.jpg",
                  color: null,
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Mail Adresi',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Şifre',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    // suffixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                      email: email.text, password: password.text)
                      .then((value) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Yanlış Şifre");
                    print(error);
                  });
                },
                style: ElevatedButton.styleFrom(
                    padding:
                    EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    backgroundColor: Color(0xff0c3358)
                ),
                child: Text(
                  "Giriş",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text(
                    "Hesabın yok mu? Yeni bir tane oluştur.",
                    style: TextStyle(color: Color(0xff0c3358), fontSize: 12),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
