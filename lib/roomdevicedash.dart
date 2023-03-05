import 'package:flutter/material.dart';
import 'package:homeui/devicecard.dart';

class DevicesGridDashboard extends StatelessWidget {
  const DevicesGridDashboard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardField(
                size,
                Icon(
                  Icons.lightbulb_outline,
                  color: Colors.orange,
                ),
                'Main Light',
                '50%'),
            CardField(size, Icon(Icons.lightbulb_outline, color: Colors.grey),
                'Table Lamp', 'Off'),
            CardField(size, Icon(Icons.lightbulb_outline, color: Colors.grey),
                'Floor Lamp', 'Off'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardField(
                size,
                Icon(
                  Icons.music_note_outlined,
                  color: Colors.amber,
                ),
                'Speaker',
                '50%'),
            CardField(
                size, Icon(Icons.radio, color: Colors.grey), 'Socket', 'Off'),
            CardField(size, Icon(Icons.wifi_outlined, color: Colors.green),
                'Sensor', 'Off'),
          ],
        ),
        CardField(
            size,
            Icon(
              Icons.air,
              color: Colors.teal,
            ),
            'Air Condition',
            '50%'),
      ],
    );
  }
}
