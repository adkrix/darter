import 'package:flutter/material.dart';

import 'package:flarter/services/services.dart';
import 'ui/ui.dart';

class StreetsScreen extends StatefulWidget {
  const StreetsScreen({super.key, required this.title});

  final String title;
  @override
  State<StreetsScreen> createState() => _StreetsScreenState();
}

class _StreetsScreenState extends State<StreetsScreen> {
  List<Osm> _list = [];
  bool _loading = false;

  @override
  void didChangeDependencies() {
    _loading = true;
    ApiService()
        .getItems()
        .then(
          (list) => setState(() {
            _list = list;
          }),
        )
        .catchError(() => {_loading = false});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: _list.map((street) => StreetItem(street: street)).toList(),
      ),
    );
  }
}
