import 'package:estuda_mais/widgets/home-card.dart';
import 'package:estuda_mais/widgets/header.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Header(
                description: 'Início',
                logo: 'assets/header-logo.svg',
                logoWidth: 300),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    MyCard(
                      cardTitle: "Queres partilhar recursos?",
                      cardDescription:
                          "Para que possas partilhar recursos tens que ter uma conta criada. Do que estás à espera?",
                      cardButtonText: "Entrar",
                      handleButtonClick: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: MyCard(
                        cardTitle: "Não queres uma conta?",
                        cardDescription:
                            "Mesmo não tendo uma conta continuarás a poder visualizar os recursos que são partilhados.",
                        cardButtonText: "Ver Recursos",
                        cardButtonColor: Colors.blue[700],
                        handleButtonClick: () {
                          print("Clicado");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
