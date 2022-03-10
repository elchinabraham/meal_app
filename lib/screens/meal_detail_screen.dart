import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final meal =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final id = meal['id'] as String;
    final title = meal['title'] as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Detail'),
      ),
      body: Text(
        '$title - $id',
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
