import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String? valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    //print(widget.valor);

    var caminhoImagem;
    if (widget.valor == 'cara') {
      caminhoImagem = 'images/moeda_cara.png';
    } else {
      caminhoImagem = 'images/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('images/botao_voltar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
