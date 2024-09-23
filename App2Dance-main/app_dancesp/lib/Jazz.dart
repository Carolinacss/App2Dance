import 'package:flutter/gestures.dart'; // Necessário para o suporte a gestos no web
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'Home.dart'; // Importe a tela Home.dart aqui
import 'LoginPage.dart'; // Importe a tela Perfil.dart aqui
import 'QuemSomos.dart'; // Importe a tela QuemSomos.dart aqui
import 'StudioL.dart'; // Importe a tela StudioL.dart aqui 
import 'Sam.dart';
import 'WA.dart';

class Jazz extends StatelessWidget {
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
                  'JAZZ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned( 
            top: 100,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgmoJazz.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
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
            top: 350,
            left: 15,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: 250,
                // Adicionar comportamento de scroll adequado
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(), // Definir comportamento de scroll
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Caixa 1 com imagem e navegação para StudioL
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StudioL()),
                          );
                        },
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 58),
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/estudiol.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Espaçamento entre as caixas
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Wa()),
                          );
                        },
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 58),
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/wa.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Espaçamento entre as caixas
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sam()),
                          );
                        },
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 58, 58, 58),
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/sam.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                      ),
                      Text('Home', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.info, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuemSomos()),
                          );
                        },
                      ),
                      Text('Quem Somos', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                      ),
                      Text('Perfil', style: TextStyle(color: Colors.white)),
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

// Custom ScrollBehavior para web
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
