import 'package:flutter/material.dart';
import 'ui/ui.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key, required this.title});

  final String title;

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/streets');
            },
            icon: Icon(Icons.location_city_outlined),
          ),

          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => ListItem(id: '$i'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/item', arguments: 'new');
        },
        tooltip: 'New item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
