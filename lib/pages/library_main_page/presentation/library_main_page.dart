import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:online_library/pages/favorites_page/favorites_page_widget.dart';
import 'package:online_library/pages/home_page/home_page_widget.dart';
import 'package:online_library/pages/profile_page/profile_page_widget.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';

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

  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedPage,
          children: const [
            MainPageWidget(),
            FavoritesPageWidget(),
            ProfilePageWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              rippleColor: AppColors.mainColor,
              hoverColor: AppColors.mainGrey100,
              tabBorderRadius: 25,
              tabShadow: [
                BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 2)
              ],
              curve: Curves.decelerate,
              duration: const Duration(milliseconds: 400),
              gap: 6,
              activeColor:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
              iconSize: 24,
              padding: const EdgeInsets.all(15),
              selectedIndex: _selectedPage,
              onTabChange: onSelectedPage,
              tabs: [
                GButton(
                  icon: Icons.my_library_books_outlined,
                  text: "Sanow",
                  iconColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
                ),
                GButton(
                  icon: Icons.menu_book_sharp,
                  text: "Meniň kitaplarym",
                  iconColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
                ),
                GButton(
                  icon: Icons.person,
                  text: "Agza bol",
                  iconColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
                ),
              ]),
        ),
      ),
    );
  }
}
