import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_viewer_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketViewerScreen(),
    const Center(child: Text('User'))
  ];
  int _selectedIndex= 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: appScreen[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled)
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
            ),
            BottomNavigationBarItem(
              label: 'Tickets',
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)
            ),
            BottomNavigationBarItem(
              label: 'Profile',
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ),
          ],
        ));
  }
}
