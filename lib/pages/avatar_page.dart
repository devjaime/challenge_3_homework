import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Avatar ejemplo'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/471/907/801/cartoon-rick-and-morty-rick-sanchez-wallpaper-preview.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JH'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://img.wattpad.com/cover/116707161-512-k527302.jpg'),
          placeholder: AssetImage('assets/loadingcaracol.gif'),
          fadeInDuration: Duration( milliseconds: 200 ),
        ),
      ),
    );
    
  }
}

