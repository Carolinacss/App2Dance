import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'Favoritos.dart'; // Importe a tela Favoritos.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui
import 'QuemSomos.dart'; // Importe a tela Quemsomos.dart aqui

class Ballet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 58, 58), // Cor de fundo cinza
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Rodapé com ícones de navegação
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58), // Cor de fundo do rodapé
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Ícone e texto para a tela Home
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Home ao pressionar o ícone
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
                  // Ícone e texto para a tela Quem Somos
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.info, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Quem Somos ao pressionar o ícone
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
                  // Ícone e texto para a tela Favoritos
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Favoritos ao pressionar o ícone
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
                  // Ícone e texto para a tela Perfil
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person, color: Colors.white),
                        onPressed: () {
                          // Navegar para a tela Perfil ao pressionar o ícone
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
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
