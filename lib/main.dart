import 'package:flutter/material.dart';

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return new MaterialApp(
        title: "App Flutter",
        theme: new ThemeData(primarySwatch: Colors.cyan),
        home: new PaginaPrincipal());
  }
}

class PaginaPrincipal extends StatelessWidget {
  double numero1 = 0.0;
  double numero2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Treina  - Flutter"),
        ),
        body: new Container(
            padding: EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration:
                      new InputDecoration(labelText: "Primeiro Número: "),
                  keyboardType: TextInputType.number,
                  onChanged: (valor) {
                    try {
                      numero1 = double.parse(valor);
                    } catch (ex) {
                      numero1 = 0.0;
                    }
                  },
                ),
                new TextField(
                  decoration: new InputDecoration(labelText: "Segundo número"),
                  keyboardType: TextInputType.number,
                  onChanged: (valor) {
                    try {
                      numero2 = double.parse(valor);
                    } catch (ex) {
                      numero2 = 0.0;
                    }
                  },
                ),
                new RaisedButton(
                  child: new Text("CALCULAR..."),
                  onPressed: () {
                    double adicao = numero1 + numero2;
                    double subtracao = numero1 - numero2;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                              title: Text("Resultados"),
                              content: new Text(
                                  " - Adição $adicao \n - Subtração: $subtracao"));
                        });
                  },
                )
              ],
            )));
  }
}

void main() => runApp(FlutterApp());
