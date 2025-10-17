import 'package:flutter/material.dart';
import 'package:flarter/services/services.dart';

class StreetItem extends StatelessWidget {
  const StreetItem({super.key, required this.street});
  final Osm street;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.my_location_sharp),
      title: Text(street.name),
      subtitle: Text(street.displayName),
      trailing: Icon(Icons.last_page),
      onTap: () {
        Navigator.pushNamed(context, '/street', arguments: street);
      },
    );
  }
}
