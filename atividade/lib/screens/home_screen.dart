import 'package:flutter/material.dart';
import 'card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Função de navegação que altera o índice da BottomNavigationBar
  void _onItemTapped(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CardExampleScreen()), // Correto
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()), // Certifique-se de ter essa tela criada
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Próxima Tela'),
      ),
      body: const HomeContent(), // Corpo da HomeScreen permanece o mesmo
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onItemTapped(context, index),
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

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/30368563/pexels-photo-30368563/free-photo-of-retrato-em-close-up-de-um-gato-maine-coon-creme.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text(
              "Olá! Seja Bem-Vindo!!!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Configuração'),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.brush),
                title: const Text('Aparência'),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Conta'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
