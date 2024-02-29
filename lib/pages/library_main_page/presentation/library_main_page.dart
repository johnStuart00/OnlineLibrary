import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LibraryMainPage extends StatefulWidget {
  const LibraryMainPage({super.key});

  @override
  State<LibraryMainPage> createState() => _LibraryMainPageState();
}

class _LibraryMainPageState extends State<LibraryMainPage> {
  int _selectedPage = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('1'),
    Text('2'),
    Text('3')
  ];

  void onSelectedPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.onlineLibrary),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: _widgetOptions[_selectedPage],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: onSelectedPage,
      ),
    );
  }
}
