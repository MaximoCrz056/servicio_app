import 'package:flutter/material.dart';
import 'package:servicio_app/widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        backgroundColor: const Color.fromRGBO(19, 138, 54, 1),
        title: const Center(
            child: Text('Inicio', style: TextStyle(color: Colors.black))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Image.asset('assets/images/conejo.png'),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/utnlogo.png'),
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildWelcomeSection(),
              _buildQuickActions(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Nuevo Reporte',
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(19, 138, 54, 1),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MainBottomNavBar(),
    );
  }

  Widget _buildWelcomeSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        children: [
          const Text(
            '¡Bienvenido de nuevo!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hola, {User}',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(19, 138, 54, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('DIVISION DE INFORMATICA',
                style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: _buildActionCard(
              icon: Icons.show_chart,
              title: 'Últimos reportes',
              subtitle: 'Reporte de luminaria\nFecha: --\nSalón: B-108',
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: _buildActionCardWithProgress(
              icon: Icons.light_mode,
              title: 'Cambio de luminaria',
              subtitle: 'Salón: B-108',
              progress: 0.75,
              daysRemaining: 56,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return SizedBox(
      width: 171,
      height: 208,
      child: Card(
        color: Colors.white.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionCardWithProgress({
    required IconData icon,
    required String title,
    required String subtitle,
    required double progress,
    required int daysRemaining,
  }) {
    return SizedBox(
      width: 171,
      height: 208,
      child: Card(
        color: Colors.white.withOpacity(0.9),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
              const SizedBox(height: 16),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 5,
                        backgroundColor: const Color.fromARGB(255, 100, 100, 100).withOpacity(0.6),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(19, 138, 54, 1)),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$daysRemaining días',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        const Text(
                          'restantes',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
