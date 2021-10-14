import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  final _estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final _estilosubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //para mucho texto envolver donde se pueda scrollear
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _crearTitulo(),
              _crearBotones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
            ],
          ),
        )
      )
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
      'https://images6.alphacoders.com/321/thumb-1920-321927.jpg'
   ),
    );
  }

  Widget _crearTitulo(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Desierto de Nuevo México', style: _estiloTitulo,),
                SizedBox(height: 7.0,),
                Text('Albuquerque Nuevo México', style: _estilosubtitulo,)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 20.0),
          Text('41', style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearBoton(Icons.call, 'CALL'),
        _crearBoton(Icons.near_me, 'ROUTE'),
        _crearBoton(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _crearBoton(IconData data, String texto){
    return Column(
      children: <Widget>[
        Icon(data, color: Colors.blue, size: 36.0,),
        SizedBox(height: 7.0,),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text('Laborum minim adipisicing proident tempor reprehenderit. Culpa nulla et est aliquip non commodo anim do consectetur elit incididunt. Excepteur sunt mollit ad cillum esse minim aute voluptate ut sunt qui reprehenderit aliquip voluptate. Aliqua eu ut sint nulla cillum dolore reprehenderit amet nostrud occaecat. Irure incididunt non adipisicing do anim mollit proident nulla deserunt culpa consequat sit quis. Dolor dolor exercitation aute labore id laboris aute. Veniam tempor id pariatur exercitation culpa occaecat ipsum culpa magna ea consequat.',textAlign: TextAlign.justify,));
  }
}