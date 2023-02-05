import 'package:flutter/material.dart';

import '../Widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      drawer: MainDrawer(),
      body: const Center(
        child: Text('Filters'),
      ),
    );
  }
}
