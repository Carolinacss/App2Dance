import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'Favoritos.dart'; // Importe a tela Favoritos.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui
import 'QuemSomos.dart'; // Importe a tela QuemSomos.dart aqui
import 'Allegro.dart'; // Importe a tela Millenium.dart aqui 
import 'CisneNegro.dart';
import 'LayllaLobo.dart';


class Ballet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor de fundo Branco
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Color.fromARGB(255, 58, 58, 58), // Cor de fundo do texto
              child: Center(
                child: Text(
                  'BALLET',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned( //Imagem HipHop
            top: 100,
            left: 0,
            right: 0,
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgmoBallet.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Text(
                  'Escolha um grupo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // ListView horizontal de caixas de imagens com texto
          Positioned(
            top: 380,
            left: 15,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Caixa 1 com imagem e navegação para Allegro
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Allegro()),
                        );
                      },
                      child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 58, 58, 58),
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage('assets/millenium.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    
                    SizedBox(width: 10), // Espaçamento entre as caixas
                    // Caixa 2 com imagem e texto (substituir com navegação se necessário)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cisnenegro()),
                        );
                      },
                    child: Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 58, 58, 58),
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage('assets/cyber.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Caixa 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),


                    SizedBox(width: 10), // Espaçamento entre as caixas
                    // Caixa 3 com imagem e texto (substituir com navegação se necessário)
                   GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Layllalobo()),
                        );
                      },
                    child: Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 58, 58, 58),
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage('assets/grupCyber.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Caixa 4',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                   ),
                  ],
                ),
              ),
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