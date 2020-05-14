import 'package:flutter/material.dart';
import 'package:stay_home_app/src/widgets/contact_card.dart';

/// This is the stateless widget that the main application instantiates.
class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      ListView(
        children: <Widget>[
          ContactCard(
            cardTitle: 'Salud',
            serviceNames: ['Ambulancia','Emecar Viña','Socorro Andino','Rescate aéreo'],
            numbers: ['131','800801911','136','138'],
          ),
          ContactCard(
            cardTitle: 'Seguridad',
            serviceNames: ['PDI', 'Carabineros', 'Informaciones'],
            numbers: ['134','133','139']
          ),
          ContactCard(
            cardTitle: 'Denuncia delitos',
            serviceNames: ['Denuncia anónima','Maltrato infantil','Violencia intrafamiliar'],
            numbers: ['800202519','147','149'],
          ),
          Center(child:
            Text('Fuente : vregion.cl  |  Extraído : 2020-05-09  |  Servicios V Región', style: TextStyle(fontSize: 10, color: Colors.grey))
          ),
        ]
      )
    );
  }
}
