import 'package:flutter/material.dart';

class Tab_tin_nhan extends StatefulWidget {
  const Tab_tin_nhan({super.key});

  @override
  State<Tab_tin_nhan> createState() => _Tab_tin_nhanState();
}

class _Tab_tin_nhanState extends State<Tab_tin_nhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/image/ic_hom_thu.jpg',
                    height: 130,
                width: 130,
              ),
            ),
            SizedBox(height: 20,),
            const Text('Chưa có tin nhắn nào', textAlign: TextAlign.center,
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
