import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget {

  final opciones = [{"title": "Uno", "description": "Description 1", "leading" : Icons.home, "trailing": Icons.arrow_right },
    {"title": "Dos", "description": "Description 2", "leading" : Icons.home, "trailing": Icons.arrow_right},
    {"title": "Tres", "description": "Description 3", "leading" : Icons.home, "trailing": Icons.arrow_right},
    {"title": "Cuatro", "description": "Description 4", "leading" : Icons.home, "trailing": Icons.arrow_right},
    {"title": "Cinco", "description": "Description 5", "leading" : Icons.home, "trailing": Icons.arrow_right}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listTile'),
      ),
      body: ListView(
        children: _crearItemsCorto()
      ),
    );
  }

  //List <Widget> _crearItems() {
   // List<Widget> lista = new List<Widget>();// Lista dinamica sin tamaño
    //for (var opt in opciones) {
    //  final tempWidget = ListTile(
    //    title: Text(opt),
     // );
      //lista.add(tempWidget);
      //lista.add(Divider());
     // lista..add(tempWidget)
       //   ..add(Divider());
   // }
   // return lista;
 // }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item){
      return Column(children: [
        ListTile(
          title: Text((item['title']), style: TextStyle(fontFamily:''  ,fontSize: 20.0,
      color: Colors.pink[400],
      fontWeight: FontWeight.w600,
    )),
            subtitle: Text(item['description'], style: TextStyle(fontSize: 20.0,
      color: Colors.blue[100],
      fontWeight: FontWeight.w600,
    )), 
            leading: Icon(item['leading']),
            trailing: Icon(item['trailing']),
           
        ),
        Divider()
      ],
      );
    }).toList();
  }
}