import 'package:flutter/material.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/screen/basket_screen.dart';
import 'package:malina_app/screen/favorites_screen.dart';
import 'package:malina_app/screen/feed_screen.dart';
import 'package:malina_app/screen/home_screen.dart';
import 'package:malina_app/screen/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  final screens = [
    const FeedScreen(),
    const FavoritesScreen(),
    const HomeScreen(),
    const ProfileScreen(),
    const BasketScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.splashColor,
          unselectedItemColor: AppColors.navIcon,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Лента',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Избранное',
              backgroundColor: AppColors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: AppColors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
              backgroundColor: AppColors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Корзина',
              backgroundColor: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
