import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless Widget")),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(title: Text("I love Flutter"), icon: Icon(Icons.favorite, size: 40.0,color: Colors.redAccent)),
            new MyCard(title: Text("I love dart"), icon: Icon(Icons.donut_large, size: 40.0, color: Colors.brown)),
            new MyCard(title: Text("I see you"), icon: Icon(Icons.visibility, size: 40.0, color: Colors.blue,)),

          ],
        )
      )
    );
  }
}

class MyCard extends StatelessWidget{
  MyCard({required this.title, required this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
            title,
            icon
            ])
        )
      )
    );
  }
}
    
      
    
  