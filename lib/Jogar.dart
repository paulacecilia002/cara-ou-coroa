import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void exibirResultado() {
    print("Botão jogar pressionado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("imagens/logo.png"),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}