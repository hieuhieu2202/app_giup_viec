import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class FindAddress extends StatefulWidget {
  const FindAddress({super.key});

  @override
  State<FindAddress> createState() => _FindAddressState();
}

class _FindAddressState extends State<FindAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Chọn vị trí làm việc',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: 720, // Adjust the height according to your need
        child: Column(
          children: [
            Expanded(
              child: OpenStreetMapSearchAndPick(
                buttonTextStyle:
                    const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
                center: const LatLong(21.585643702213922, 105.80641036833585),
                buttonColor: Colors.blue,
                buttonText: 'Chọn vị trí ',
                hintText: 'Chọn vị trí',
                onPicked: (pickedData) {},
                //onGetCurrentLocationPressed: locationService.getPosition,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
