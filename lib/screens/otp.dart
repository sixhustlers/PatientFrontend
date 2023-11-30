import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginpagecolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text("1"),
                    SizedBox(width: 2.5,),
                    Text("2"),
                    SizedBox(width: 2.5,),
                    Text("3"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
