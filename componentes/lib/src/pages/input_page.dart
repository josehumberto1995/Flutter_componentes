import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';
  String _opcionesSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0 ,  vertical: 20.00),
        children: <Widget>[
          _crearImout(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdow(),
          Divider(),
          _crearPersona(),
          
          
          
        ],
        
      ),
    );
  }

  Widget _crearImout() {

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.00)
        ),
        counter: Text('Letras ${ _nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon (Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor){
        setState(() {
        _nombre = valor;  
        });
      },
    );
  

  }

   Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress, //se agrega par que se ponga el arroba en el teclado
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.00)
        ),
        counter: Text('Letras ${ _nombre.length}'),
        hintText: 'Email',
        labelText: 'Email',
        helperText: 'Ingrese su correo',
        suffixIcon: Icon (Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor){
        setState(() {
        _email = valor;  
        });
      },
    );
  

  }

  Widget _crearPassword() {

    return TextField(
      obscureText: true, //oculta los caracteres
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.00)
        ),
        //counter: Text('Letras ${ _nombre.length}'),
        hintText: 'Passdword',
        labelText: 'Password',
        helperText: 'Ingrese su contraseña',
        suffixIcon: Icon (Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      /*onChanged: (valor){
        setState(() {
        _email = valor;  
        });
      },*/
    );
  

  }

   Widget _crearFecha(BuildContext context) {

   return TextField(
        enableInteractiveSelection: false,
        controller: _inputFieldDateController,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.00)
        ),
       // counter: Text('Letras ${ _nombre.length}'),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        helperText: 'Ingrese su fecha de nacimiento',
        suffixIcon: Icon (Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar),
      ),
     onTap: (){
       FocusScope.of(context).requestFocus(new FocusNode()); //quitar el foco en el elememto
       _selectDate(context);
     },
    );

   
  }

   _selectDate(BuildContext context) async{
      
     DateTime picked = await showDatePicker(

       context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2030),
        locale: Locale('es' , 'ES')


     );

     if (picked != null){
       setState(() {
         _fecha = picked.toString();
         _inputFieldDateController.text = _fecha;
       });
     }

    }

List<DropdownMenuItem<String>> getOpcionesDropdonw (){

  List<DropdownMenuItem<String>> lista = new List();

  _poderes.forEach((poder){
    lista.add(DropdownMenuItem(

      child: Text(poder),
      value: poder,

    ));
  });

  return lista;

} 

Widget _crearDropdow(){

return Row(
  children: <Widget>[
  Icon(Icons.select_all),
  SizedBox(width: 30.00),

  Expanded(
      child: DropdownButton(
    value: _opcionesSeleccionada,
    items: getOpcionesDropdonw(),
      onChanged: (opt){
        setState(() {
          _opcionesSeleccionada = opt;
        });
      
    }
    ),
  )
    
  ],
);


}


  Widget _crearPersona() {

    return ListTile(
      title: Text ('Su nombre es: $_nombre'),
      subtitle: Text('Su email es: $_email'),
      trailing: Text(_opcionesSeleccionada),
    );
  }
}