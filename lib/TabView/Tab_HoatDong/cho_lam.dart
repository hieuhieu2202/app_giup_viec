import 'package:app_giup_viec/ButtomNavigation/Navitagion_App.dart';
import 'package:app_giup_viec/ButtomNavigation/home.dart';
import 'package:app_giup_viec/ButtomNavigation/taikhoan.dart';
import 'package:app_giup_viec/View/login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:app_giup_viec/View/modal_login.dart';

class Cho_Lam extends StatefulWidget {
  const Cho_Lam({super.key});

  @override
  State<Cho_Lam> createState() => _Cho_LamState();
}

class _Cho_LamState extends State<Cho_Lam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/icon_book.jpg',
              width: 250,
              height: 250,
            ),
            // const SizedBox(height: 10),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: Text(
                  'Công việc bạn đăng lên sẽ được hiển thị đây\nđể bạn dễ dàng thao tác và quản lý. Bạn có thể xem lại lịch sử những  công việc đã được hoàn thành ở mục Lịch sử nằm ở góc trên bên phải',
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
                  //     pageBuilder: (context, animation, secondaryAnimation) =>
                  //         const Navigation_App(selectedIndex: 0),
                  //     transitionsBuilder:
                  //         (context, animation, secondaryAnimation, child) {
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
