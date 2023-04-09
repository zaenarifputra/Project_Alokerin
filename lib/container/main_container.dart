import 'package:alokerin/main/bookmark_screen.dart';
import 'package:alokerin/main/search_screen.dart';
import 'package:alokerin/main/home_screen.dart';
import 'package:alokerin/main/profile_screen.dart';
import 'package:alokerin/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int selectedScreen = 0;
  static final List<Widget> _widgetOptions = [
    const HomeScreen(name: "Home",),
    const SearchScreen(text: "Search",),
    const BookmarkScreen(text: "Bookmark",),
    const ProfileScreen(text: "Profile",)
  ];

  void onItemTap(int screen) {
    setState(() {
      selectedScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedScreen],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Styles.outlineColor,
              blurRadius: 15,
                offset: const Offset(0.0, 0.75)
            )
          ]
        ),
        child: BottomNavigationBar(
          currentIndex: selectedScreen,
          onTap: onItemTap,
          backgroundColor: Styles.backgroundColor,
          selectedItemColor: Styles.onPrimaryContainerColor,
          unselectedItemColor: Styles.onPrimaryContainerColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled
              ),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_search_filled
              ),
              label: "Search"
            ),

            BottomNavigationBarItem(
                icon: Icon(
                    FluentSystemIcons.ic_fluent_bookmark_regular
                ),
                activeIcon: Icon(
                    FluentSystemIcons.ic_fluent_bookmark_filled
                ),
                label: "Bookmark"
            ),

            BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_person_filled
              ),
              label: "Profile"
            )
          ]
        ),
      )
    );
  }
}
