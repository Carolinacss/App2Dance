import 'package:flutter/material.dart';
import 'QuemSomos.dart'; // Importe a tela QuemSomos.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui
import 'HipHop.dart'; // Importe a tela HipHop.dart aqui
import 'Ballet.dart'; // Importe a tela Ballet.dart aqui
import 'Jazz.dart'; // Importe a tela Jazz.dart aqui

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 58, 58), // Cor de fundo cinza
      body: SingleChildScrollView( // Widget para permitir a rolagem da tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:50, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'STREETS DANCE',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Escolha uma modalidade',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3),
            GestureDetector( // Widget de toque para navegar para a tela HipHop
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HipHop()),
                );
              },
              child: Container(
                height: 195,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgmoHipHop.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 3),
            GestureDetector( // Widget de toque para navegar para a tela Ballet
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ballet()),
                );
              },
              child: Container(
                height: 195,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgmoBallet.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 3),
            GestureDetector( // Widget de toque para navegar para a tela Jazz
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jazz()),
                );
              },
              child: Container(
                height: 195,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/imgmoJazz.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(height: 84,
        color: const Color.fromARGB(255, 58, 58, 58), // Cor do rodapé
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
    );
  }
}
