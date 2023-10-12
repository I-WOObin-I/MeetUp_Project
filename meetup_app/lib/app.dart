import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meetup_app/features/organisations_feature/organisation_details_view.dart';

import 'features/clubs_feature/club_details_view.dart';
import 'features/lfg_feature/presentation/pages/lfg_board.dart';
import 'features/user_feature/user_details_view.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_view.dart';

class MyApp extends StatefulWidget {
  final SettingsController settingsController;

  MyApp({required this.settingsController});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      ClubDetailsView(),
      OrganisationDetailsView(),
      UserDetailsView(),
      LFGBoard(),
      SettingsView(controller: widget.settingsController),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: widget.settingsController.themeMode,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('My App'),
        // ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          height: 60.0,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          // headers
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.star),
              label: 'Club',
            ),
            NavigationDestination(
              icon: Icon(Icons.emoji_events),
              label: 'League',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Personal',
            ),
            NavigationDestination(
              icon: Icon(Icons.group_add),
              label: 'LFG',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
        ),

        // bodies
        body: <Widget>[
          ClubDetailsView(),
          OrganisationDetailsView(),
          UserDetailsView(),
          const LFGBoard(),
          SettingsView(controller: widget.settingsController),
        ][_selectedIndex],
      ),
    );
  }
}
