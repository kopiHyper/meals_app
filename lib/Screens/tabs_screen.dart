import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.secondary,
            tabs: const [
              Tab(icon: Icon(Icons.category), text: 'Categories,'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
