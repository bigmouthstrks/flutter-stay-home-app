import 'package:flutter/material.dart';
import 'package:stay_home_app/src/pages/tabs_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: 
      ThemeData(
        primaryColor: Color(0xff3074FE),
        primaryColorDark: Color(0xff13217D),
        accentColor: Color(0xffF43F7E),
        backgroundColor: Color(0xffe6e9fa),
        secondaryHeaderColor: Color(0xff3074FD),
        fontFamily: 'OpenSans',
        textTheme: TextTheme(
          title: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400, color: Colors.white),
          headline: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400, color: Theme.of(context).primaryColorDark),
          body2: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Theme.of(context).accentColor),
          button: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
          subhead: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),
          subtitle: TextStyle(fontSize: 13.0, fontStyle: FontStyle.italic, color: Colors.black,),
        ),
      ),
      home: TabsPage(),
    );
  }
}