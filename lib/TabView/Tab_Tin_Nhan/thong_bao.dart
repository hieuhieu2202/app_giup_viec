import 'package:flutter/material.dart';

class Thong_bao extends StatefulWidget {
  const Thong_bao({super.key});

  @override
  State<Thong_bao> createState() => _Tab_tin_nhanState();
}

class _Tab_tin_nhanState extends State<Thong_bao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/image/ic_thongbao.png',
                    height: 130,
                width: 130,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20,),
            const Text('Chưa có thông báo nào', textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.black54,
                  fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
