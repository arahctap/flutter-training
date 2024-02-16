import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),
        ),
        barrierColor: Colors.white.withOpacity(0.1),
        builder: (BuildContext context) {
          return Container(
            height: 500.0,
            child: const Center(
              child: Text(
                'This is a modal bottom sheet',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          );
        },
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 40),
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                semanticsLabel: "Company Logo",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
