import  'package:flutter/material.dart';
 
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
                  ],
                ),
              );
            }
          
   Widget _cardTipo1() {
     return Card(
       elevation: 15,
       shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
       child: Column(
         children: <Widget>[
           ListTile(
             leading: Icon(Icons.photo_album),
             title: Text('Aguaje'),
             subtitle: Text('Este es una prueba, ejemplo del posible card para el proyecto aguaje, interesante para engañar a esa gente jajajajaja'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                 child: Text('AGUAJE'),
                onPressed:(){
                },
                ),
                FlatButton(
                 child: Text('JAJA'),
                onPressed:(){
                },
                )
            ],
          )
         ],
       ),
     );
    }

  Widget _cardTipo2() {

    final card = Container(
      child: Column(
      children: <Widget>[

        FadeInImage(
          placeholder: AssetImage('assets/original.gif'), 
          image:NetworkImage('https://www.aboutespanol.com/thmb/2I9aAsYz555i-z2bqnY6hMygSnc=/1135x851/smart/filters:no_upscale()/aguaje-56e0d58d3df78c5ba0568107.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.00,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: 
          Text('Esto es un hermoso paisaje')
          )
      ],
      ),
    );

  return Container(
       decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.00),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 20.00,
          spreadRadius: 2.0,
          offset: Offset(2.0, 3.00),
        ),
        
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.00),
      child: card,
    ),
  );

  }
}