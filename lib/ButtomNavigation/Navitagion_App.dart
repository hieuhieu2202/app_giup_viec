import 'package:flutter/material.dart';
import 'package:app_giup_viec/ButtomNavigation/home.dart';
import 'package:app_giup_viec/ButtomNavigation/hoatdong.dart';
import 'package:app_giup_viec/ButtomNavigation/taikhoan.dart';
import 'package:app_giup_viec/ButtomNavigation/tinnhan.dart';

class Navigation_App extends StatefulWidget {
  final int selectedIndex;
  const Navigation_App({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _NavigationAppState createState() => _NavigationAppState(selectedIndex);
}

class _NavigationAppState extends State<Navigation_App> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const TrangChu(),
    const HoatDong(),
    const TinNhan(),
    const TaiKhoan(),
  ];

  _NavigationAppState(this._selectedIndex);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Hoạt động',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications),
            label: 'Tin nhắn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
