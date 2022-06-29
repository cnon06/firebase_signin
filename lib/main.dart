import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled54/seconscreen.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {






  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final auth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextButton(

              onPressed: () async
              {

               //   auth.createUserWithEmailAndPassword(email: "hebehube@gmail.com", password: "123456677");

                try
                    {
                    await auth.signInWithEmailAndPassword(email: "hebehube@gmail.com", password: "123456677");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(getData: "Signed In",)));
                    }
                    catch(e)
                {
                print(e);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(getData: e.toString(),)));
                }
                },


              child: Text("Press"),

            ),

          ],
        ),
      ),

    );
  }
}
