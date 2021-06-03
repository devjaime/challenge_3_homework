import 'package:flutter/material.dart';

import '/providers/menu_provider.dart';

import '/utils/icono_string_util.dart';




class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Challenge 2'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){

        return ListView(
          children: _listaItems(snapshot.data, context ),
        );

      },
    );

  

    

  }

  List<Widget> _listaItems( List<dynamic>? data, BuildContext context ) {

    final List<Widget> opciones = [];


    data!.forEach( (opt) {

      final widgetTemp = ListTile(
        tileColor: Colors.black12,
        focusColor: Colors.blueGrey,
        selectedTileColor: Colors.black54,
        title: Text( opt['texto'] ),
        leading:  getIcon( opt['icon'] ) ,
        trailing: Icon ( Icons.keyboard_arrow_right, color: Colors.deepOrangeAccent ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta'] );
        },
      );

      opciones..add( widgetTemp )
              ..add( Divider() );

    });

    return opciones;

  }

}


