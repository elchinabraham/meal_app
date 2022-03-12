import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);
  static const String routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function(bool) updateValue,
  ) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile('Gluten-Free',
                    'Only include glutem-free meals', _glutenFree, (e) {
                  setState(() {
                    _glutenFree = e;
                  });
                }),
                _buildSwitchListTile('Lactose-Free',
                    'Only include lactose-free meals', _lactoseFree, (e) {
                  setState(() {
                    _lactoseFree = e;
                  });
                }),
                _buildSwitchListTile(
                    'Vegetarian', 'Only include vegetarian meals', _vegetarian,
                    (e) {
                  setState(() {
                    _vegetarian = e;
                  });
                }),
                _buildSwitchListTile(
                    'Vegan', 'Only include vegan meals', _vegan, (e) {
                  setState(() {
                    _vegan = e;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
