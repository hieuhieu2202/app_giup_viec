import 'package:app_giup_viec/ButtomNavigation/Navitagion_App.dart';
import 'package:app_giup_viec/ButtomNavigation/home.dart';
import 'package:app_giup_viec/ButtomNavigation/taikhoan.dart';
import 'package:app_giup_viec/View/modal_login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:app_giup_viec/contants.dart';

class Lap_Lai extends StatefulWidget {
  const Lap_Lai({super.key});

  @override
  State<Lap_Lai> createState() => _Cho_LamState();
}

class _Cho_LamState extends State<Lap_Lai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/image/icon_book.jpg',
                width: 250,
                height: 250,
              ),
            ),
            // const SizedBox(height: 10),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: Text(
                  laplai,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black54,
                      fontSize: 15),
                )),
            const SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(340, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.white),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  showBottomSheetLogin(context);
                  // Navigator.push(
                  //   context,
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation, secondaryAnimation) => const Navigation_App(selectedIndex: 0),
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //       return FadeTransition(
                  //         opacity: animation,
                  //         child: child,
                  //       );
                  //     },
                  //   ),
                  // );
                },
                child: Text(
                  'Đăng nhập ngay',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
