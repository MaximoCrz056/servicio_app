// lib/widgets/custom_bottom_nav_bar.dart

import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.grid_view, color: Color.fromRGBO(19, 138, 54, 1)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.show_chart),
            onPressed: () {},
          ),
          const SizedBox(width: 48), // Placeholder for FAB
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}