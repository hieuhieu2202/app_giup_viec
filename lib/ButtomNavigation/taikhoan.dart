import 'package:flutter/material.dart';
import 'package:app_giup_viec/View/modal_login.dart';
class TaiKhoan extends StatefulWidget {
  const TaiKhoan({super.key});

  @override
  State<TaiKhoan> createState() => _TaiKhoanState();
}

class _TaiKhoanState extends State<TaiKhoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 135,
              color: Colors.white,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  showBottomSheetLogin(context);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_circle_rounded,
                      size: 80,
                      color: Color(0xFFDED9D9),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Chào mừng bạn đến với\n bTakee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                color: Colors.black)),
                        const SizedBox(height: 10),
                        Container(
                          constraints: const BoxConstraints(
                            minWidth: 100,
                            maxWidth: 240,
                            // minHeight: 50,
                            maxHeight: 50,
                          ),

                          alignment: Alignment.center,
                          // color: Colors.orangeAccent,

                          decoration: BoxDecoration(
                            color: Color(0xFFDED9D9),
                            // border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            'Đăng nhập / Tạo tài khoản',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                // backgroundColor: Color(0xFFDED9D9),
                                fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              color: Colors.white,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cài đặt',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.black)),
                        SizedBox(height: 10),
                      ],
                    ),
                    SizedBox(width: 210),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              color: Colors.white,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Đăng xuất',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.black)),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
