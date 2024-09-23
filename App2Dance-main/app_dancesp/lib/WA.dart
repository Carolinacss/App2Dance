import 'package:flutter/material.dart';
import 'Home.dart'; // Importa a tela Home.dart
import 'LoginPage.dart'; // Importa a tela Perfil.dart
import 'QuemSomos.dart'; // Importa a tela QuemSomos.dart

// Definição da classe Millenium como um StatelessWidget
class Wa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 58, 58), // Define a cor de fundo
      body: SingleChildScrollView( // Permite a rolagem vertical da tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho com o título 'JAZZ'
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Center(
                child: Text(
                  'JAZZ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            
            // Container exibindo uma imagem
            Container(
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/wa2.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5), // Espaçamento entre os widgets



            // Informações sobre o grupo em um Container colorido
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              color: Color.fromARGB(255, 30, 30, 30),
              child: Center(
                child: Text(
                  'CEO – Adriana Angelilli & Wilson Ciavarelli',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            SizedBox(height: 5),
            // Descrição da Millennium Dance Complex
            Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 30, 30, 30),
              child: Text(
                'Em 1996, Wilson e a Adriana deram início a WA Show, um núcleo artístico de criação de espetáculos de dança, que até hoje leva a alma e a mágica da dança pelo Brasil e exterior, incluindo incríveis shows na China, Europa, Caribe e Estados Unidos.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),



            // Informações adicionais sobre turmas e endereço
            Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 30, 30, 30),
              child:Center(
              child: Text(
                'JAZZ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 30, 30, 30),
               child: Center(
              child: Text(
                'Endereço: Rua Augusta, 1221, Consolação, São Paulo - SP',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ),
          ],
        ),
      ),



      // Barra de navegação inferior (BottomNavigationBar)
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 58, 58, 58),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Ícone e texto para a tela Home
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
            // Ícone e texto para a tela Quem Somos (atual)
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
            // Ícone e texto para a tela Perfil
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    // Navegar para a tela Perfil
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
