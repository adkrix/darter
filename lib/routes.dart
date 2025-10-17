import 'package:flarter/screens/screens.dart';

const initialRoute = '/';

final routes = {
  '/': (context) => ItemsScreen(title: 'Home'),
  '/item': (context) => ItemScreen(),
  '/streets': (context) => StreetsScreen(title: 'Streets'),
  '/street': (context) => StreetScreen(),
  '/settings': (context) => SettingsScreen(title: 'Settings'),
};
