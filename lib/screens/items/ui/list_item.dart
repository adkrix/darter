import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset('svg/scull.svg', width: 25, height: 25),
      title: Text('add $id'),
      subtitle: Text('remove $id'),
      trailing: Icon(Icons.last_page),
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: id);
      },
    );
  }
}
