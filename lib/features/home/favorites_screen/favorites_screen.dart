import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = 'FavoritesScreen';

  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        centerTitle: true,
      ),
    );
  }
}
