import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo= TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo= TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ]
       ),
      )
    );
  }

  Widget _crearImagen(){
    return Image(image: NetworkImage('https://mott.pe/noticias/wp-content/uploads/2019/03/los-50-paisajes-maravillosos-del-mundo-para-tomar-fotos-1280x720.jpg'));
  }

  Widget _crearTitulo() {
    return  SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Mirada al horizonte', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Lago entre las montañas', style: estiloSubTitulo,)
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style:  TextStyle(fontSize:  20.0),)
                ],
                ),
            ),
    );
  }

 Widget _crearAcciones() {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me, 'ROUTE'),
       _accion(Icons.share, 'SHARE'),
     ],
   );
 }

 Widget _accion(IconData icon, String text){
   return Column(
         children: [
           Icon(icon, color: Colors.blue, size: 40.0,),
           SizedBox(height: 5.0,),
           Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
         ],
       );
 }

 Widget _crearTexto() {
   return SafeArea(
        child: Container(
       padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
       child: Text('Non eiusmod elit sit sunt id esse quis incididunt consequat. Qui veniam tempor veniam anim exercitation incididunt consectetur ea veniam in aute. Nisi do sunt sit pariatur. Consequat qui et nostrud nulla eu fugiat exercitation ea laboris labore eiusmod reprehenderit sit cillum. Adipisicing aute incididunt nisi officia ipsum occaecat. Aliquip aute amet consectetur reprehenderit aute ad sint ut magna eu dolore dolore et consequat. Id excepteur nisi labore do labore.', 
       textAlign: TextAlign.justify,)),
   );
 }


}