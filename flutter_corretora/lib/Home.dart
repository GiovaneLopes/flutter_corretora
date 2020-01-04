import 'package:flutter/material.dart';

import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';
import 'TelaServico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaEmpresa(),
        ));
  }

  void _abrirServico() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaService(),
        ));
  }

  void _abrirCliente() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaCliente(),
        ));
  }

  void _abrirContato() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaContato(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("Corretora Giovis")),
          backgroundColor: Colors.grey,
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(32, 50, 32, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.black45)),
                        child: Icon(
                          Icons.home,
                          size: 35,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("iCorretora",
                              style: TextStyle(fontSize: 35)))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.green[300],
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                          _abrirEmpresa();
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                "A EMPRESA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.red[300],
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                          _abrirServico();
                        },
                        child: Container(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                "SERVIÇOS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.yellow[300],
                        onPressed: () {
                          _abrirCliente();
                        },
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                "CLIENTES",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                        color: Colors.blue[300],
                        onPressed: () {
                          _abrirContato();
                        },
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                "CONTATO",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}

class TelaServico {}
