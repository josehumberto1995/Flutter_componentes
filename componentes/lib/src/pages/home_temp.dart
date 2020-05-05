import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco' ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Componentes Temp'),
      ),
      body: ListView(
        children:  _crearItemCorta()
      )
    );
  }

  /*List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider());

    }

    return lista;
  }*/

  //Método MAP

  List<Widget> _crearItemCorta() {
    
    return opciones.map( (item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text (item + '!'),
            subtitle: Text ('Probando'),
            leading: Icon(Icons.ac_unit), //parte inicio
            trailing: Icon(Icons.keyboard_arrow_right), // parte final 
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

    //return widgets;
  }


}

  