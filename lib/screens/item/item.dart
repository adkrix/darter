import 'package:flarter/services/api/api.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  String? id;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final args = ModalRoute.of(context)?.settings.arguments;

    assert(args != null && args is String, 'Param args must be String');

    id = args as String;

    setState(() {});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Item $id'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Content')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ApiService().getItems();
        },
        tooltip: 'Download',
        child: const Icon(Icons.download),
      ),
    );
  }
}
