import 'package:flutter/material.dart';
import 'package:app_giup_viec/ButtomNavigation/home.dart';
import 'package:app_giup_viec/ButtomNavigation/hoatdong.dart';
import 'package:app_giup_viec/ButtomNavigation/taikhoan.dart';
import 'package:app_giup_viec/ButtomNavigation/tinnhan.dart';
class Navigation_App extends StatelessWidget {
  const Navigation_App({super.key});

  @override
  Widget build(BuildContext context) {
    return _Navigation_App();
  }
}

class _Navigation_App extends StatefulWidget {

  @override
  State<_Navigation_App> createState() => _Navigation_AppState();
}

class _Navigation_AppState extends State<_Navigation_App> {
  int _slectIndex=0;
  final List<Widget> widgetOption = <Widget>[
    const TrangChu(),
    const HoatDong(),
    const TinNhan(),
    const TaiKhoan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _slectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: widgetOption[_slectIndex],
      ),
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
        currentIndex: _slectIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}



