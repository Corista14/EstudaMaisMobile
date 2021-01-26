import 'package:estuda_mais/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
              child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 28,
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: SvgPicture.asset(
                'assets/logo-dark.svg',
                width: 220,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Text(
                          "Entrar",
                          style: TextStyle(fontSize: 28),
                        ),
                        Divider(
                          indent: 130,
                          endIndent: 130,
                          thickness: 1,
                          color: Colors.grey[800],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MyTextField(
                          isObscure: false,
                          label: 'Email...',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                          isObscure: true,
                          label: 'Palavra-Passe...',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Esqueceste-te da Palavra-Passe?", style: TextStyle(
                                decoration: TextDecoration.underline
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 250,
                          height: 38,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.teal),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Não tens uma conta?",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Regista-te!",
                                style: TextStyle(fontSize: 18, decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
