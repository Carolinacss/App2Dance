import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'Favoritos.dart'; // Importe a tela Favoritos.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui

class QuemSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagem de fundo
          Image.asset(
            'assets/imgQuemSomos.png',
            fit: BoxFit.cover,
          ),
          // Container para posicionar o título "Quem Somos"
          Positioned(
            top: 15, // Ajuste a posição vertical conforme necessário
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20), // Espaçamento interno vertical
              child: Center(
                child: Text(
                  'Quem Somos',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // Container para posicionar o texto "Criadores"
          Positioned(
            top: 100, // Ajuste a posição vertical conforme necessário
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10), // Espaçamento interno vertical
              child: Center(
                child: Text(
                  'Criadores',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 340, // Ajuste a posição vertical conforme necessário
            left: -5,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10), // Espaçamento interno vertical
              child: Center(
                child: Text(
                  'Carolina de O. Alves                      Isabela de O. Alves',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // Container para posicionar o conteúdo sobre a imagem
          Positioned(
            top: 400, // Posição vertical do topo em relação à imagem
            left: -10,
            right: -30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Caixa de cor em torno do primeiro bloco de texto
                Container(
                  padding: EdgeInsets.all(40), // Espaçamento interno da caixa
                  color: Colors.white, // Cor de fundo branca
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Somos um aplicativo de informações \nsobre grupos de dança em São Paulo.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 0), // Espaçamento entre os blocos de texto
                // Caixa de cor em torno do segundo bloco de texto
                Container(
                  padding: EdgeInsets.all(50), // Espaçamento interno da caixa
                  color: Color.fromARGB(255, 58, 58, 58), // Cor de fundo cinza escuro
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Você vai visualizar grupos de dança de hip-hop, ballet e jazz em SP, onde \npoderá favoritar e ver as informações \ndos grupos.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Rodapé com ícones de navegação e textos
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Home
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.info, color: Colors.white),
                        onPressed: () {
                         // Navegar para a tela Quem Somos
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuemSomos()),
                          );
                      },
                      ),
                      Text(
                        'Quem Somos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Favoritos
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Favoritos()),
                          );
                      },
                      ),
                      Text(
                        'Favoritos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person, color: Colors.white),
                        onPressed: () {
                           // Navegar para a tela Perfil
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage ()),
                          );
                      },
                      ),
                      Text(
                        'Perfil',
                        style: TextStyle(
                          color: Colors.white,
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}