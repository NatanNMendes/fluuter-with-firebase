import 'package:flutter/material.dart';
import 'home_screen.dart';

class CardExampleScreen extends StatefulWidget {
  const CardExampleScreen({super.key});

  @override
  _CardExampleScreenState createState() => _CardExampleScreenState();
}

class _CardExampleScreenState extends State<CardExampleScreen> {
  int _currentIndex = 1; // Definindo que a aba atual é a do meio (Pesquisar)

  void _onTabTapped(int index) {
    if (index == _currentIndex) return; // Evita navegação repetida

    Widget screen;
    switch (index) {
      case 0:
        screen = const HomeScreen(); // Vai para HomeScreen
        break;
      case 1:
        return; // Já está nesta tela, então não faz nada
      case 2:
        screen = const HomeScreen(); // Ajuste para a tela correta
        break;
      default:
        return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Sample')),
      body: ListView.builder(
        itemCount: 10, // Número de cards
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[100], // Simulando imagem no topo
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Glass Souls' World Tour",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "From your recent favorites",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      onPressed: () {},
                      child: const Text("Buy Tickets", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped, // Chama a função que troca de tela
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
