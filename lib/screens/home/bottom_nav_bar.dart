import 'package:flutter/material.dart';
import 'package:payments_app/screens/home/home_screen.dart';
import 'package:payments_app/theme/app_colors.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  // List of widgets for each tab
  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Search Page')),
    Center(child: Text('Favorites Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // show current tab
      bottomNavigationBar: SizedBox(
        height: 120,
        child: BottomNavigationBar(
          selectedLabelStyle: Theme.of(context).textTheme.bodySmall,
          unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
          type: BottomNavigationBarType.fixed, // for 4+ tabs
          currentIndex: _currentIndex,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.lightbodyText,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // update current tab
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'My Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
