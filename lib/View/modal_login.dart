import 'package:flutter/material.dart';
import 'package:app_giup_viec/View/login.dart';

void showBottomSheetLogin(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
    ),
    builder: (BuildContext context) {
      return Container(
        height: 350,
        decoration: BoxDecoration(
          // color: Colors.grey,
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Đăng nhập hoặc đăng ký', // Thay thế bằng tiêu đề mong muốn
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              color: Colors.grey, // Màu sắc của đường kẻ
              thickness: 1, // Độ dày của đường kẻ
              height: 1, // Chiều cao của đường kẻ
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                TextButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(320, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.white),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                const SizedBox(height: 15),
                TextButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(320, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.white),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey)),
                    onPressed: () {},
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Hoặc đăng nhập với',
                  style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        // Bán kính của góc bo tròn cho ClipRRect.
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // Màu nền của container.
                            borderRadius: BorderRadius.circular(20.0),
                            // Giá trị này xác định bán kính của góc hơi tròn của container.
                            border: Border.all(
                                color: const Color(0xE1E1E1FF),
                                width:
                                    1), // Đường viền màu xám có độ rộng 1 pixel.
                          ),
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              // Để nút có nền trong suốt.
                              padding: EdgeInsets.zero,
                              // Đảm bảo nút không có padding bên trong container.
                              elevation: 0,
                              // Để loại bỏ hiệu ứng đổ bóng.
                              shadowColor: Colors.transparent,
                              // Để loại bỏ bóng đổ.
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Bán kính của góc hơi tròn của nút.
                              ),
                            ),
                            onPressed: () {}, // Hành động khi nút được nhấn.
                            child: Image.asset(
                              'assets/image/ic_fb.png',
                              // Đường dẫn tới hình ảnh được sử dụng trong nút.
                              width: 30, // Độ rộng của hình ảnh.
                              height: 30, // Chiều cao của hình ảnh.
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        // Bán kính của góc bo tròn cho ClipRRect.
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // Màu nền của container.
                            borderRadius: BorderRadius.circular(20.0),
                            // Giá trị này xác định bán kính của góc hơi tròn của container.
                            border: Border.all(
                                color: const Color(0xE1E1E1FF),
                                width:
                                    1), // Đường viền màu xám có độ rộng 1 pixel.
                          ),
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              // Để nút có nền trong suốt.
                              padding: EdgeInsets.zero,
                              // Đảm bảo nút không có padding bên trong container.
                              elevation: 0,
                              // Để loại bỏ hiệu ứng đổ bóng.
                              shadowColor: Colors.transparent,
                              // Để loại bỏ bóng đổ.
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Bán kính của góc hơi tròn của nút.
                              ),
                            ),
                            onPressed: () {}, // Hành động khi nút được nhấn.
                            child: Image.asset(
                              'assets/image/icon_gg.png',
                              // Đường dẫn tới hình ảnh được sử dụng trong nút.
                              width: 30, // Độ rộng của hình ảnh.
                              height: 30, // Chiều cao của hình ảnh.
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
      //
    },
  );
}
