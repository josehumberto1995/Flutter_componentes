import  'package:flutter/material.dart';
 
class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(), //propiedad para hacer el borde redondeado
          onPressed: (){
            _mostrarAlerta(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      
      context: context,
      barrierDismissible: true,
      builder:(context){ // se crea con el builder (context) el push pop de la alerta

        return AlertDialog( //se crea el dialogo o mensaje que se quiere mostrar en la alerta
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

          title: Text('Te gusta la informacion'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // codigo para que se adapte a la dimensiones intenas de la app
            children: <Widget> [
              Text('Se come el aguaje y no se mete en el culo jajaja'),
              FlutterLogo(size: 100.00),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('De verdad?'),
              onPressed: () {
                Navigator.of(context).pop();
              }, 
            ),
              FlatButton(
              child: Text('Te dan?'),
              onPressed: () {
                Navigator.of(context).pop();
              }, 
            ),
          ],
        );


      }

    );
  }
}