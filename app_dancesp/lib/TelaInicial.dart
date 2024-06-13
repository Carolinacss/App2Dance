// ignore_for_file: file_names, unnecessary_import
import 'package:app_dancesp/QuemSomos.dart'; // Importa a tela QuemSomos.dart
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  void initState() {
    super.initState();

    // Navegar para a tela QuemSomos automaticamente após um pequeno atraso (por exemplo, 2 segundos)
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuemSomos()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagem de fundo cobrindo todo o espaço disponível
          Image.asset(
            'assets/imgcapa.png', // Caminho da imagem a ser exibida
            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço disponível
          ),
        ],
      ),
    );
  }
}
