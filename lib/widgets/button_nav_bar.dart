import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:recycle_app/Screens/favorite_screen.dart';
import 'package:recycle_app/Screens/categories_screen.dart';
import 'package:recycle_app/Screens/setting_screen.dart';

class ButtomNavScreen extends StatefulWidget {
  const ButtomNavScreen({super.key, required this.username});
  final String username;
  @override
  State<ButtomNavScreen> createState() => _ButtomNavScreenState();
}

class _ButtomNavScreenState extends State<ButtomNavScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      CategoriesScreen(
        username: widget.username,
      ),
      FavoriteScreen(
        username: widget.username,
      ),
      const SettingScreen(),
    ];
    return SafeArea(
      child: Scaffold(
          body: _screens[_selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.grey.withOpacity(.4))
            ]),
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: GNav(
                  gap: 3,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  duration: const Duration(milliseconds: 500),
                  tabBackgroundColor: Colors.grey.shade800,
                  tabs: const [
                    GButton(
                      icon: Icons.home_outlined,
                      iconColor: Colors.black,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.favorite_border_outlined,
                      iconColor: Colors.black,
                      text: 'Fav',
                    ),
                    GButton(
                      icon: Icons.settings_outlined,
                      iconColor: Colors.black,
                      text: 'Setting',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                ),
              ),
            ),
          )),
    );
  }
}
