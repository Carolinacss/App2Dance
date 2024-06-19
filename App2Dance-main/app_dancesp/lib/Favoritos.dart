import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'QuemSomos.dart'; // Importe a tela QuemSomos.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui

class Favoritos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Define o fundo da tela como branco
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Container para o cabeçalho com o título "Meus Favoritos"
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(255, 58, 58, 58), // Cor de fundo cinza 
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Text(
                  'MEUS FAVORITOS',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255), // Cor do texto branco
                  ),
                ),
              ),
            ),
          ),
          // Rodapé com ícones de navegação
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 58, 58), // Cor de fundo cinza 
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
                  // Ícone e texto para a tela Favoritos (atual)
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
