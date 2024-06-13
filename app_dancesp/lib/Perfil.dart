import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'Favoritos.dart'; // Importe a tela Favoritos.dart aqui
import 'QuemSomos.dart'; // Importe a tela QuemSomos.dart aqui

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3A3A), // Cor de fundo cinza
      body: Stack(
        fit: StackFit.expand,
        children: [            // Rodapé com ícones de navegação e textos
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Column(children: [
                  
              ],
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
                            MaterialPageRoute(builder: (context) => Perfil()),
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

