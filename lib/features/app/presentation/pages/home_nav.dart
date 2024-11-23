import 'package:flutter/material.dart';
import 'package:homex/features/app/presentation/pages/message/message.dart';
import 'package:homex/features/app/presentation/pages/other_pages/prop_info_page.dart';
import 'package:homex/features/app/presentation/pages/profile/account_settings.dart';
import 'package:homex/features/auth/presentation/pages/login.dart';

import 'bottom_nav.dart';
import 'search/search_screen.dart';

class HomeNav extends StatefulWidget {
  final int? index;
  const HomeNav({super.key, this.index});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {}

  final List<Widget> _widgetOptions = <Widget>[
    const SearchScreen(),
    const Message(),
    const LoginScreen(),
    const AccountSettings(),
    const PropInfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onpressed: _onItemTapped,
      ),
    );
  }
}
