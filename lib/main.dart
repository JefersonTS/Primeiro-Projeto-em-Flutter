import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/*void main() {
  runApp(
    MaterialApp(
      home: Text('Hello World')
      )
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Primeira Aplicação'),
        ),
        body: Text('Hello World')
      ),
    ),
  );
}*/

/*void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha Primeira Aplicação'),
        ),
        body: Text.rich(
          TextSpan(
            text: 'Olá',
            children: <TextSpan>[
              TextSpan(text: 'mundo', style:TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(text: 'lindo', style: TextStyle(fontWeight: FontWeight.bold)),],
          ),
        )
      ),
    )
  );
}*/

class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example Title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: MyScaffold(),
    ));
}
