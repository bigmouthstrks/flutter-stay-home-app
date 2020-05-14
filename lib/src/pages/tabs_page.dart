import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stay_home_app/src/pages/home_page.dart';
import 'package:stay_home_app/src/pages/statistics_page.dart';
import 'package:stay_home_app/src/pages/contact_page.dart';
import 'package:stay_home_app/src/pages/faq_page.dart';

class TabsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return TabsPageState();
  }
}

class TabsPageState extends State<TabsPage>{
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _setTitle(_currentIndex),
        backgroundColor: Theme.of(context).primaryColorDark,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Acerca de'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: _navegar(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColorDark,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.home),
            title: Text('Inicio', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.chartBar),
            title: Text('Cifras'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.hospitalBox),
            title: Text('Contacto'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountQuestion),
            title: Text('FAQ'),
          ),
        ],
        onTap: (index){
          setState(()=> _currentIndex = index);
        }
      ),
    );
  }

  Widget _navegar(int index){
    switch (index) {
      case 1:
        return StatisticsPage();
      case 2:
        return ContactPage();
      case 3:
        return FaqPage();
      default:
        return HomePage();
    }
  }

  Widget _setTitle(int index){
    switch (index) {
      case 1:
        return Text('Cifras',style: Theme.of(context).textTheme.title);
      case 2:
        return Text('Contacto',style: Theme.of(context).textTheme.title);
      case 3:
        return Text('FAQ' ,style: Theme.of(context).textTheme.title);
      default:
        return Text('Stay Home App' ,style: Theme.of(context).textTheme.title);
    }
  }

  void handleClick(String value){
    switch(value){
      case 'Acerca de':
        _showDialog();
        break;
    }
  }

  void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("Acerca de Stay Home App", style: TextStyle(color: Theme.of(context).accentColor)),
            content: Text("Ésta aplicación fue creada por: Benjamín Cáceres Ramírez, estudiante de TUI de la USM Viña del Mar."),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              FlatButton(
                child: Text("Cerrar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
}