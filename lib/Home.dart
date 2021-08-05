import 'dart:math';

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    var itens = ['cara', 'coroa'];
    var numeros = Random().nextInt(itens.length);
    var resultado = itens[numeros];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
