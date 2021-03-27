import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:project_01/screen/LoginScreen.dart';
import 'package:project_01/screen/LoginScreen1.dart';

main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

/*void main() =>  runApp(MaterialApp(
  home: MyApp(),
  ));*/

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Buy food in RMUTL",
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAuth _auth = Firebase.instance;



  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginScreen(),
      image: Image.asset("images/logo.png"),
      title: Text(
        "Buy food in RMUTL",
        style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 30.0
        ),
      ),
      photoSize: 80.0,
      backgroundColor: Color(0xFF1B4F72),
      loaderColor: Colors.grey,
    );
  }
}

class LogingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "PROJECT01",
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.blueGrey,
          )
      ),
      home: LoginScreen(),
      initialRoute: '/',
     /* routes: {
        '/': (context) => ,
        '/second': (context) => ,
        '/third': (context) =>,
      },
      //home: LoginScreen(),*/
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen1(),
    );
  }
}