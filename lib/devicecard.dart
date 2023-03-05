import 'package:flutter/material.dart';

CardField(
  Size size,
  Icon icon,
  String title,
  String subtitle,
) {
  return Card(
      child: SizedBox(
          height: size.width * .23,
          width: size.width * .26,
          child: Center(
            child: Column(children: [
              ListTile(
                leading: icon,
                title: Text(
                  subtitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ]),
          )));
}
