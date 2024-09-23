import 'package:flutter/material.dart';
import 'QuemSomos.dart';
import 'Home.dart';
import 'LoginPage.dart';

class Perfil extends StatelessWidget {
  final String email;
  final String password;

  Perfil({required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 58, 58), // Define a cor de fundo da AppBar
        elevation: 0, // Remove a sombra da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Define a cor do ícone como branco
          onPressed: () {
            Navigator.pop(context); // Ação padrão de voltar
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 58, 58, 58), // Define o fundo da tela
            padding: EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 160.0), // Mover para baixo 30 pixels
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email:',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: Text(
                            email,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Senha:',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: Text(
                            password,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
        SizedBox(height: 30),
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
          // Imagem que ocupa 1/4 da tela
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.30, 
            child: Container(
              color: Colors.grey, // Cor de fundo da imagem
              child: Image.asset(
                'assets/millenium.png', 
                fit: BoxFit.cover,
                    ),
                  ),
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
