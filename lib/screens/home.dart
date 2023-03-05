import 'package:flutter/material.dart';

import 'package:homeui/customcard.dart';
import 'package:homeui/devicegrid.dart';
import 'package:homeui/gradientcontainer.dart';
import 'package:homeui/scenes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff5f7fa),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .4,
                width: size.width,
              ),
              GradientContainer(size),
              Positioned(
                top: size.height * .15,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "My Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        "Rooms",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ),
                    Row(
                      children: [
                        CustomCard(size, context),
                        CustomCard(size, context),
                        CustomCard(size, context),
                        CustomCard(size, context),
                        CustomCard(size, context),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          DevicesGridDashboard(size: size),
          ScenesDashboard()
        ],
      ),
    );
  }
}
