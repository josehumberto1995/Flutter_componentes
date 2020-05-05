import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
 
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

double _valorSlider = 100;
bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Slider'),
       ),
       body: Container(
         padding: EdgeInsets.all(50.00),
         child: Column(
           children: <Widget>[
             _crearSlder(),
             _crearChecksBox(),
             _crearCheckSwitch(),
             Expanded(
               child:_crearImagen()
             ),
           ],
         ),
       ),
    );
  }

  _crearSlder() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la aguajina',
      //divisions: 20,
      value: _valorSlider,
      min: 10.00,
      max: 600.00, 
      onChanged: (  _bloquearCheck) ? null : (valor){
        setState(() {
            _valorSlider = valor;
        });
      },
    );
  }
 _crearChecksBox() {

    /*return Checkbox(
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
            _bloquearCheck = valor;
        });
      
      },
    );*/

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
            _bloquearCheck = valor;
        });
      
      },
    );


  }

  _crearCheckSwitch() {

    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
            _bloquearCheck = valor;
       });
      },
    );
  }

  _crearImagen() {
    
    return Image(
      image: NetworkImage('https://www.iperu.org/wp-content/uploads/2018/05/aguajina-1280x720.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
      
      );

  }

  

 
}

