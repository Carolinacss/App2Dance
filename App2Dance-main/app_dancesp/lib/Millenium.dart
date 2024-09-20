import 'package:flutter/material.dart';
import 'Home.dart'; // Importa a tela Home.dart
import 'Favoritos.dart'; // Importa a tela Favoritos.dart
import 'LoginPage.dart'; // Importa a tela Perfil.dart
import 'QuemSomos.dart'; // Importa a tela QuemSomos.dart

// Definição da classe Millenium como um StatelessWidget
class Millenium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 58, 58), // Define a cor de fundo
      body: SingleChildScrollView( // Permite a rolagem vertical da tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho com o título 'STREET DANCE'
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Center(
                child: Text(
                  'STREET DANCE',
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
                  image: AssetImage('assets/millenium.png'), 
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
                  'CEO – Paula Tomazella & Milo Levell',
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
                'A Millennium Dance Complex é conhecida mundialmente como o primeiro estúdio do mundo da dança comercial, sendo conhecido como "o lugar onde tudo acontece". A Millennium é um lugar acolhedor e dedicado ao mais alto nível de serviço e instrução, pois todos os alunos tem a oportunidade de estudar com os melhores profissionais da indústria e se beneficiar de um amplo conhecimento no mundo artístico.',
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
              padding: EdgeInsets.symmetric (vertical: 20, horizontal: 60),
              color: Color.fromARGB(255, 30, 30, 30),
              child: Text(
                'Turmas: HIP HOP, JAZZ, COMTEMPORÂNEO E BALLET ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric (vertical: 20, horizontal: 68),
              color: Color.fromARGB(255, 30, 30, 30),
              child: Text(
                'Endereço: Alameda dos Arapanés 1440, Moema - SP',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
            // Ícone e texto para a tela Favoritos
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
