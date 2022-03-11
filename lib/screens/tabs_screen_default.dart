// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favorites_screen.dart';

class TabsScreenDefault extends StatefulWidget {
  const TabsScreenDefault({Key? key}) : super(key: key);

  @override
  State<TabsScreenDefault> createState() => _TabsScreenDefaultState();
}

class _TabsScreenDefaultState extends State<TabsScreenDefault> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            // ignore: prefer_const_literals_to_create_immutables
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favorites",
              ),
            ],
          ),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
