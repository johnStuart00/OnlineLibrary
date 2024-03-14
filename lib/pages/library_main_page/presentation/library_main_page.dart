import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_library/widgets/favorites_list/favorites_list_widget.dart';
import 'package:online_library/widgets/home_page_details/home_page_details_widget.dart';
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

  bool _isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 238, 240, 1),
      drawer: const LeftNavBarWidget(),
      appBar: AppBar(
        title: _isSearch
            ? _buildSearchField()
            : Text(
                AppLocalizations.of(context)!.tagamlySozler,
              ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(_isSearch ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                _isSearch = !_isSearch;
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedPage,
          children: [
            MainDatailsWidget(),
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
              color:
                  const Color.fromRGBO(13, 57, 52, 1), // unselected icon color
              activeColor: const Color.fromRGBO(
                  13, 57, 52, 1), // selected icon and text color
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

Widget _buildSearchField() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Search...',
      border: InputBorder.none,
    ),
    autofocus: true,
    onChanged: (value) {
      // Perform search operation here
    },
  );
}
