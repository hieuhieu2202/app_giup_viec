import 'package:flutter/material.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'assets/image/icon_clean.jpg',
      'text': 'Dọn dẹp',
    },
    {
      'image': 'assets/image/icon_clean_house.jpg',
      'text': 'Dọn dẹp nhà',
    },
    {
      'image': 'assets/image/cleanning.jpg',
      'text': 'Đang dọn dẹp',
    },
    {
      'icon': const Icon(Icons.add_circle_outline),
      'text': 'Dịch vụ',
    },
    // Thêm thông tin cho các dữ liệu khác nếu cần
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'bTaske',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(width: 50),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 140,
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(13.0),
                          // Thêm padding cho Card
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hãy khám phá và trải nghiệm các dịch vụ gia đình ngay hôm nay.',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  // fontStyle: FontStyle.italic
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white70),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Đăng nhập / Tạo tài khoản',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 460,
                  //   margin: EdgeInsets.all(5.0),
                  //   // color: Colors.white,
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           ElevatedButton(
                  //               onPressed: () {
                  //                 // Navigator.of(context).push(
                  //                 // MaterialPageRoute(
                  //                 // builder: (context) => FindAddress(),
                  //                 // ),
                  //                 // );
                  //               },
                  //               style: ButtonStyle(
                  //                 backgroundColor:
                  //                     MaterialStateProperty.all<Color>(
                  //                         Colors.white),
                  //                 fixedSize: MaterialStateProperty.all<Size>(
                  //                     Size(175, 200)),
                  //               ),
                  //               child: Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   ClipOval(
                  //                       child: Image.asset(
                  //                     'assets/image/icon_clean.jpg',
                  //                     width: 100,
                  //                     height: 100,
                  //                   )),
                  //                   const SizedBox(height: 10),
                  //                   const Text(
                  //                     'Dọn dẹp',
                  //                     style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontFamily: 'Montserrat_light',
                  //                     ),
                  //                   )
                  //                 ],
                  //               )),
                  //           const SizedBox(width: 15),
                  //           ElevatedButton(
                  //               onPressed: () {},
                  //               style: ButtonStyle(
                  //                 backgroundColor:
                  //                     MaterialStateProperty.all<Color>(
                  //                         Colors.white),
                  //                 fixedSize: MaterialStateProperty.all<Size>(
                  //                     Size(175, 200)),
                  //               ),
                  //               child: Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   ClipOval(
                  //                       child: Image.asset(
                  //                     'assets/image/icon_clean_house.jpg',
                  //                     width: 100,
                  //                     height: 100,
                  //                   )),
                  //                   SizedBox(height: 10),
                  //                   const Text(
                  //                     'Dọn dẹp nhà',
                  //                     style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontFamily: 'Montserrat_light',
                  //                     ),
                  //                   )
                  //                 ],
                  //               )),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           ElevatedButton(
                  //               onPressed: () {},
                  //               style: ButtonStyle(
                  //                 backgroundColor:
                  //                     MaterialStateProperty.all<Color>(
                  //                         Colors.white),
                  //                 fixedSize: MaterialStateProperty.all<Size>(
                  //                     Size(175, 200)),
                  //               ),
                  //               child: Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   ClipOval(
                  //                     child: Image.asset(
                  //                       'assets/image/cleanning.jpg',
                  //                       width: 100,
                  //                       height: 100,
                  //                     ),
                  //                   ),
                  //                   const SizedBox(height: 10),
                  //                   const Text(
                  //                     'Đang dọn dẹp',
                  //                     style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontFamily: 'Montserrat_light',
                  //                     ),
                  //                   )
                  //                 ],
                  //               )),
                  //           const SizedBox(width: 15),
                  //           ElevatedButton(
                  //               onPressed: () {},
                  //               style: ButtonStyle(
                  //                 backgroundColor:
                  //                     MaterialStateProperty.all<Color>(
                  //                         Colors.white),
                  //                 fixedSize: MaterialStateProperty.all<Size>(
                  //                     Size(175, 200)),
                  //               ),
                  //               child: const Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Icon(
                  //                     Icons.add_circle_outline,
                  //                     size: 100,
                  //                     color: Colors.green,
                  //                   ),
                  //                   SizedBox(height: 10),
                  //                   Text(
                  //                     'Dịch vụ',
                  //                     style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontFamily: 'Montserrat_light',
                  //                     ),
                  //                   )
                  //                 ],
                  //               )),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // )
                  Container(
                    // height: 500,
                    // color: Colors.red,
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                       // padding:  EdgeInsets.all(10),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 220,
                        // shrinkWrap: true,
                        crossAxisCount: 2,
                      ),

                      children: List.generate(dataList.length, (index) {
                        if (dataList[index].containsKey('image')){
                          return ElevatedButton(
                            onPressed: () {
                              // Xử lý khi nút được nhấn
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              minimumSize: MaterialStateProperty.all<Size>(const Size(175, 300)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    dataList[index]['image'],
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  dataList[index]['text'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat_light',
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                        else {
                          return ElevatedButton(
                            onPressed: () {
                              // Xử lý khi nút được nhấn
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              minimumSize:
                              MaterialStateProperty.all<Size>(const Size(175, 300)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.add_circle_outline,
                                size: 100,
                                  color: Colors.green,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  dataList[index]['text'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat_light',
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
