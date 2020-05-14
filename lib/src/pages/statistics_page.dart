import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatisticsPage extends StatefulWidget{
  final Widget child;

  StatisticsPage({Key key, this.child}) : super(key: key);

  _StatisticsPageState createState() => _StatisticsPageState();

}

class _StatisticsPageState extends State<StatisticsPage> {
  List<charts.Series<Region, String>> _seriesPieData;

  _generateData(){

    var pieData = [
      new Region('Matropolitana', 75, Colors.red),
      new Region('Tarapacá', 1.9, Colors.blue),
      new Region('Magallanes', 3.0, Colors.teal),
      new Region('Arica y Parinacota', 1.1, Colors.purple),
      new Region('Los Lagos', 1.9, Colors.green),
      new Region('Araucanía', 4.9, Colors.cyan),
      new Region('Biobío', 3.1, Colors.grey),
      new Region('Ñuble', 2.7, Colors.amber),
      new Region('Maule', 1.5, Colors.pink),
      new Region("O'Higgins", 0.7, Colors.orange),
      new Region('Valparaíso', 3.4, Colors.blueAccent),
      new Region('Antofagasta', 3.6, Colors.deepOrange),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Region region,_)=> region.region,
        measureFn: (Region region,_)=> region.rangeValue,
        colorFn: (Region region,_)=>
          charts.ColorUtil.fromDartColor(region.color),
          id:'Rangos etarios',
          labelAccessorFn: (Region row,_)=>'${row.rangeValue}%',
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    _seriesPieData = List<charts.Series<Region, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child:
        Column(
          children: <Widget>[
            Text('Contagios por región', style: TextStyle(fontSize: 24, color: Theme.of(context).accentColor, fontWeight: FontWeight.bold)),
            Divider(),
            Expanded(
              child: charts.PieChart(
                _seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                defaultRenderer: charts.ArcRendererConfig(
                  arcWidth: 120,
                  arcRendererDecorators: [
                    charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside
                    )
                  ]
                ),
                behaviors: [
                  charts.DatumLegend(
                    outsideJustification: charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 4,
                    cellPadding: EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                        color: charts.MaterialPalette.purple.shadeDefault,
                        fontSize: 11),
                  )
                ],
              )
            ),
            Text('Fuente : Minsal.cl  |  Actualizado : 2020-05-12  |  CNN Chile', style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
    );
  }
}

class Region {
  String region;
  double rangeValue;
  Color color;
  Region(this.region, this.rangeValue, this.color);
}