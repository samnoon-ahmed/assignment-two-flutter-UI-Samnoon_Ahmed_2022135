import 'package:flutter/material.dart';
import 'home_with_tabs.dart';
import 'report_page.dart';
import 'cards_page.dart';
import 'profile_with_tabs.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  static const _primaryColor = Color(0xFF4B5BFD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // so nav bar floats nicely
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeWithTabs(),
          ReportPage(),
          CardsPage(),
          ProfileWithTabs(),
        ],
      ),
      // custom “floating” bottom nav style
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (i) {
                setState(() => _currentIndex = i);
                _pageController.jumpToPage(i);
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home_rounded, color: _primaryColor),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_outlined),
                  activeIcon:
                  Icon(Icons.bar_chart_rounded, color: _primaryColor),
                  label: "Reports",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_outlined),
                  activeIcon:
                  Icon(Icons.credit_card_rounded, color: _primaryColor),
                  label: "Cards",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon:
                  Icon(Icons.person_rounded, color: _primaryColor),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}