import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stay_home_app/src/widgets/home_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        ListView(children: <Widget>[
          HomeCard(
            title: 'Cifras', 
            text: 'Revisa algunas de las últimas estadísticas respecto al COVID-19 en Chile.', 
            buttonText: 'Ver Cifras', 
            icon: Icon(MdiIcons.chartBar, size: Theme.of(context).textTheme.button.fontSize),
            image: 'assets/images/statistics.png',
          ),
          HomeCard(
            title: 'Contacto', 
            text: '¿Necesitas un número de emergencia? Revisa la lista.', 
            buttonText: 'Ver Lista', 
            icon: Icon(MdiIcons.contacts, size: Theme.of(context).textTheme.button.fontSize),
            image: 'assets/images/contact.png',
          ),
          HomeCard(
            title: 'FAQ', 
            text: 'Revisa la lista de preguntas frecuentes para informarte sobre el COVID-19.', 
            buttonText: 'Ver FAQ', 
            icon: Icon(MdiIcons.accountQuestion, size: Theme.of(context).textTheme.button.fontSize),
            image: 'assets/images/faq.png',
          ),
        ],
      )
    );
  }
}