import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_library/widgets/favorites_list/favorites_list_widget.dart';
import 'package:online_library/widgets/left_nav_bar.dart';

class LibraryMainPage extends StatefulWidget {
  const LibraryMainPage({super.key});

  @override
  State<LibraryMainPage> createState() => _LibraryMainPageState();
}

class _LibraryMainPageState extends State<LibraryMainPage> {
  int _selectedPage = 0;

  void onSelectedPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftNavBarWidget(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.onlineLibrary),
        centerTitle: true,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedPage,
          children: [
            const Text('1'),
            FavoritesListWidget(),
            const Text('3'),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              rippleColor: Colors.grey, // tab button ripple color when pressed
              hoverColor: Colors.grey, // tab button hover color
              //haptic: true, // haptic feedback
              tabBorderRadius: 25,
              tabShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 2)
              ], // tab button shadow
              curve: Curves.decelerate, // tab animation curves
              duration:
                  const Duration(milliseconds: 400), // tab animation duration
              gap: 6, // the tab button gap between icon and text
              color: Colors.red, // unselected icon color
              activeColor: Colors.red, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.grey.withOpacity(0.3),
              backgroundColor: Colors.white, // selected tab background color
              padding: const EdgeInsets.all(15),
              selectedIndex: _selectedPage,
              onTabChange: onSelectedPage,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: "Favorites",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                ),
              ]),
        ),
      ),
    );
  }
}
