import 'package:flutter/material.dart';
import 'package:homeui/cardfield.dart';

class DevicesGridDashboard extends StatelessWidget {
  const DevicesGridDashboard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text(
              "Devices",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardField(
                  size,
                  Colors.blue,
                  Icon(
                    Icons.camera_outlined,
                    color: Colors.white,
                  ),
                  'Cameras',
                  '8 Devices'),
              CardField(
                  size,
                  Colors.amber,
                  Icon(Icons.lightbulb_outline, color: Colors.white),
                  'Lights',
                  '8 Devices'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardField(
                  size,
                  Colors.orange,
                  Icon(Icons.music_note_outlined, color: Colors.white),
                  'Speakers',
                  '2 Devices'),
              CardField(
                  size,
                  Colors.teal,
                  Icon(Icons.sports_cricket_sharp, color: Colors.white),
                  'Cricket bat',
                  '8 Devices'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardField(
                  size,
                  Colors.purple,
                  Icon(Icons.wifi_outlined, color: Colors.white),
                  'Sensors',
                  '5 Devices'),
              CardField(
                  size,
                  Colors.green,
                  Icon(Icons.air_outlined, color: Colors.white),
                  'Air Condition',
                  '4 Devices'),
            ],
          )
        ],
      ),
    );
  }
}
