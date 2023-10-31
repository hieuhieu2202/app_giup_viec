import 'package:app_giup_viec/TabView/Tab_Tin_Nhan/thong_bao.dart';
import 'package:flutter/material.dart';
import 'package:app_giup_viec/TabView/Tab_Tin_Nhan/tin_nhan.dart';
class TinNhan extends StatefulWidget {
  const TinNhan({super.key});

  @override
  State<TinNhan> createState() => _TinNhanState();
}

class _TinNhanState extends State<TinNhan> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Tin nhắn',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
            ),
            bottom: const TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              labelColor: Colors.deepOrangeAccent,
              unselectedLabelColor: Colors.black54,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.deepOrangeAccent,
                    width: 2.0,
                  ),
                ),
              ),
              tabs: [
                Tab(
                  child: Align(
                    child: Text('Tin nhắn', style: TextStyle(fontSize: 16,
                        fontFamily: 'Montserrat_light', fontWeight: FontWeight.w900)),
                  ),
                ),
                Tab(
                  child: Align(
                    child: Text('Thông báo', style: TextStyle( fontSize: 16,
                        fontFamily: 'Montserrat_light', fontWeight: FontWeight.w900, textBaseline: TextBaseline.alphabetic)),
                  ),
                )
              ],
            ),

          ),
          body: const TabBarView(
            children: [
              Center(
                child: Tab_tin_nhan() ,
              ),
              Center(child: Thong_bao(),),
            ],
          ),
        ),
      ),
    );
  }
}
