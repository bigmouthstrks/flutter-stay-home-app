import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  List<String> serviceNames, numbers;
  String cardTitle;

  ContactCard({String cardTitle, List<String> serviceNames, List<String> numbers}){
    this.cardTitle = cardTitle;
    this.serviceNames = serviceNames;
    this.numbers = numbers;
  }

  @override
  Widget build(BuildContext context) {
      return  Container(
        margin: EdgeInsets.all(10),
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
      DataTable(
        columns:
          <DataColumn>[
            DataColumn(
              label: Text(cardTitle, style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 16.0)),
            ),
            DataColumn(
              label: Text(''),
            )
          ],
        rows: 
        generateRows(),
      ),
    );
  }

    List<DataRow> generateRows () {
      int largoListaServicios = serviceNames.length;
      int cont = 0;
      List<DataRow> list = [];

      while (cont < largoListaServicios){

        list.add(DataRow(
          cells: <DataCell>[
            DataCell(
              Text(serviceNames[cont], style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500)),
            ),
            DataCell(
                Text(numbers[cont], style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500)),
                onTap: () {
                  print('Llamar a éste número');
                }
                ),
              ]
            )
          );
        cont++;

      }
      return list;
    }

}

