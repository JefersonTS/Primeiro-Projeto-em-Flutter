import 'package:flutter/material.dart';

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

void main() {
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
}