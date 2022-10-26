import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Home(),
  ));

}
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  var _frases = [
    "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
    "Novas amizades serão sempre bem-vindas para darem cor e alegria ao meu dia a dia.",
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Nem toda mudança importante acontece de repente e faz barulho, algumas são silenciosas e vão se fazendo no dia a dia.",
    "Não pago com a mesma moeda, porque gosto de valorizar o troco com nobreza e caráter",
    "Você só vence amanhã se não desistir hoje",
    "Não me conte o que eles falaram ao meu respeito, diga-me apenas porque eles estavam tão confortáveis em dizer isso na sua frente.",
    "Assim como a lua, a vida é resumida em fases",
    "Seja uma pessoa boa, mas não perca seu tempo provando isso ❤️",
    "O que ninguém sabe, ninguém estraga✌️",
    "Enquanto você estiver preso à opniões alheias, não será livre e muito menos feliz. Liberte-se",
    "O prego que se destaca, é o primeiro a ser martelado",
    "Raiva é aquele negócio que faz a boca ser mais rápida do que a cabeça.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrases(){
    var numerosSoteados = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[ numerosSoteados ];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Frase do dia" ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontStyle: FontStyle.italic
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                      color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                  color: Colors.green,
                  onPressed: _gerarFrases
              )
            ],
          ),
        ),
      ),
    );
  }
}

