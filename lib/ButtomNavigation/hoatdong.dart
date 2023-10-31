import 'package:flutter/material.dart';
import 'package:app_giup_viec/TabView/Tab_HoatDong/cho_lam.dart';
import 'package:app_giup_viec/ButtomNavigation/Navitagion_App.dart';
import 'package:app_giup_viec/TabView/Tab_HoatDong/Lap_Lai.dart';

class HoatDong extends StatefulWidget {
  const HoatDong({super.key});

  @override
  State<HoatDong> createState() => _HoatDongState();
}

class _HoatDongState extends State<HoatDong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              // Căn chỉnh văn bản
              labelColor: Colors.deepOrangeAccent,
              unselectedLabelColor: Colors.black54,
              indicator: UnderlineTabIndicator(
                borderSide:
                    BorderSide(color: Colors.deepOrangeAccent, width: 3.0),
                // insets: EdgeInsets.symmetric(horizontal: 40.0), // Điều chỉnh chiều rộng của dòng ngang
              ),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Chờ làm',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat_light',
                            fontWeight: FontWeight.w900,
                            textBaseline: TextBaseline.alphabetic)),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Lặp lại',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat_light',
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ),
              ],
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hoạt động',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black)),
                Text(
                  'Lịch sử',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Cho_Lam(),
              ),
              Center(child: Lap_Lai()),
            ],
          ),
        ),
      ),
    );
  }
}
