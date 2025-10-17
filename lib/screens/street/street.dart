import 'package:flutter/material.dart';
import 'package:flarter/services/models/osm.dart';
import 'ui/ui.dart';

class StreetScreen extends StatefulWidget {
  const StreetScreen({super.key});

  @override
  State<StreetScreen> createState() => _StreetScreenState();
}

class _StreetScreenState extends State<StreetScreen> {
  Osm? street;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final args = ModalRoute.of(context)?.settings.arguments;

    assert(args != null && args is Osm, 'Param args must be Osm');

    street = args as Osm;

    setState(() {});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(street?.name ?? 'oops'),
      ),
      body: Center(
        child: street != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InfoRow(
                    title: 'Display name: ',
                    value: street?.displayName ?? '',
                  ),
                  InfoRow(
                    title: 'Longitude: ',
                    value: (street?.lon ?? 0).toString(),
                  ),
                  InfoRow(
                    title: 'Latitude: ',
                    value: (street?.lat ?? 0).toString(),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('No street')],
              ),
      ),
    );
  }
}
