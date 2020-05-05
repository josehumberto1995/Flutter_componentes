import 'package:flutter/material.dart';
 
final _icons = <String, IconData>{

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.insert_emoticon,
  'folder_open'   : Icons.folder_open,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,
  

};

Icon getIcon (String nombreIcono) {

return Icon(_icons[nombreIcono], color:Colors.blue);

}