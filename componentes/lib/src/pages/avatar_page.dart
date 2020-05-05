import  'package:flutter/material.dart';
 
class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
        
        Container(
          //padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.iperu.org/wp-content/uploads/2018/05/aguajina-1280x720.jpg'),
            //radius: 30.00,
            
          ),
        ),
        
        Container(
          margin: EdgeInsets.all(10),
          child: CircleAvatar(
            child: Text('JH'),
            backgroundColor: Colors.yellow,
            
          ),
        ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'),
          image: NetworkImage('https://http2.mlstatic.com/aguaje-hormonal-en-polvo-1kg-D_NQ_NP_862437-MPE32468957352_102019-F.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
      ),
    );
  }
}