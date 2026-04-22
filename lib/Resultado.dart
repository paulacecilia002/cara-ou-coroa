import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String valor;

  const Resultado(this.valor, {super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    String imagem = widget.valor == "cara"
        ? "imagens/moeda_cara.png"
        : "imagens/moeda_coroa.png";

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagem),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}