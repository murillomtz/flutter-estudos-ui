import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  botaoFlutuante() => debugPrint("Botao Flutuante");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("App 1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.accessible), onPressed: () => debugPrint("Ola")),
          IconButton(icon: new Icon(Icons.print), onPressed: () => debugPrint("Ei")),
          IconButton(icon: new Icon(Icons.access_alarm), onPressed: () => debugPrint("Alarm"))
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bonni",
              style: TextStyle(
                  fontSize: 19.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrange
              ),),

            Padding(padding: EdgeInsets.all(15.0),
              child: InkWell(
                child: Text("Clique",
                  style: TextStyle(
                      fontSize: 16.0

                  ),),
                //onTap: () => debugPrint("Tap"),
                //onDoubleTap: () => debugPrint("Tap Duplo"),
                onLongPress: () => debugPrint("Press Longo"),
              ),
            )

          ],

        ),


      ),




      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
            title: Text("Perfil")),
        BottomNavigationBarItem(icon: Icon(Icons.print), title: Text("Print"))


      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: botaoFlutuante,
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,

      ),


    );
  }
}
