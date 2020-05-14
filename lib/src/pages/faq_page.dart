import 'package:flutter/material.dart';
import 'package:stay_home_app/src/widgets/faq_card.dart';

class FaqPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Center(child: Container(margin: EdgeInsets.all(5.0), padding: EdgeInsets.all(4.0), child: Text('Revisa aquí algunas de las preguntas más frecuentes sobre el coronavirus: ', style: Theme.of(context).textTheme.subtitle))),
          FaqCard(question: '¿Qué es el Nuevo Coronavirus COVID-19?', answer: 'El Nuevo Coronavirus COVID-19 es una cepa de la familia de coronavirus que no se había identificado previamente en humanos. Es el nombre definitivo otorgado por la OMS. Los coronavirus son causantes de enfermedades que van desde el resfriado común hasta enfermedades más graves, como Insuficiencia Respiratoria Aguda Grave.'),
          FaqCard(question: '¿Cómo se contagia?', answer: 'El virus se transmite de persona a persona cuando tiene contacto cercano con un enfermo. Por ejemplo, al vivir bajo el mismo techo, compartir la misma sala en un hospital, viajar por varias horas en un mismo medio de transporte, o cuidar a un enfermo sin la debida medida de protección.'),
          FaqCard(question: '¿Cuáles son los signos y síntomas?', answer: 'En la mayoría de los casos donde se han presentado los síntomas son: Fiebre sobre 37,8° grados, Tos, Dificultad para respirar (a diferencia de un resfriado), Dolor de cabeza, Dolor de garganta, En caso de tener dificultad para respirar, acude a un médico, Si la enfermedad no se trata a tiempo, estos síntomas pueden agravarse, Los síntomas se presentan leves y aumentan de forma gradual'),
          FaqCard(question: '¿Cómo se previene esta enfermedad?', answer: 'Por ser una enfermedad de tipo respiratoria, se transmite a través de gotitas provenientes de la tos y los estornudos. Las medidas de prevención son: Cubrirse con pañuelo desechable o con el antebrazo (nunca con la mano) la nariz y la boca al estornudar o toser., Lavarse las manos frecuentemente con jabón o un desinfectante a base de alcohol por más de 20 segundos, Mantener una distancia mínima de 1 metro entre usted y cualquier persona que tosa o estornude, Evitar tocarse los ojos, la nariz y la boca, No compartir bombilla, vaso o cubiertos con otras personas, Evitar saludar con la mano o dar besos, Permanecer en casa si no se encuentra bien. Si tiene fiebre, tos y dificultad para respirar, busque atención médica.'),
          FaqCard(question: '¿Quienes tienen más riesgo de enfermar?', answer: 'Aquellas personas que hayan viajado a países y zonas con casos confirmados o brotes activos y quienes tengan contacto cercano con enfermos.'),
          FaqCard(question: '¿Cuál es la población de riesgo?', answer: 'Solo un 2% de las personas que se ha contagiado ha muerto, pero pueden desarrollar una enfermedad más fuerte las personas mayores o quienes padecen de afecciones médicas preexistentes, como hipertensión arterial, problemas cardíacos o diabetes. '),
          Center(child:
            Text('Fuente : Gob.cl  |  Extraído : 2020-05-11  |  Gobierno de Chile', style: TextStyle(fontSize: 10, color: Colors.grey))
          ),
          Center(          
            child:
              GestureDetector(
                child:
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: 
                  GestureDetector(
                    child:
                      FlatButton(child: Text('Más información aquí.', style: TextStyle(decoration: TextDecoration.underline, color: Theme.of(context).accentColor)),
                      onPressed: () {
                        print('Link presionado!');
                      }
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
