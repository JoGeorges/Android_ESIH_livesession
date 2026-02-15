import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp (
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ZapZapp'),
      leading: Icon(Icons.menu),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactScreen())
            );
          }
        ), 
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            print("Ou peze bouton an");
          },
        ), 
      ], 
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){},
      mini: true,
    ),
    body: Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text("Go to ContactScreen"),
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContactScreen())
          );
        }
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.checklist),
          label: "Check List",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_support),
          label: "Contact",
        ),
      ],
      onTap: (index){
        if (index == 2){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => ContactScreen())
          );
        } else {
          print("Index ki peze a se: $index");
        }
      }
    ),
  );
  }
}



class ContactScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('ZapZapp'),
      leading: Icon(Icons.menu),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.pop(context);
          }
        ), 
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {

          },
        ), 
      ], 
    ),
    body: Center(
      child: Column(
        children: [
          Text("Bienvenue sur cette page"),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text("Retour"),
            onPressed: (){
              Navigator.pop(context);
            }
          )
        ]
      )
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back),
          label: "Retour",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_support),
          label: "Contact",
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.pop(context);
        }
      },
    ),
  );
  }
}
