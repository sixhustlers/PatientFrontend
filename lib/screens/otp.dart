import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String verificationCode = "";
  TextEditingController otpController = TextEditingController();

  // Function to handle OTP submission
  void onOtpSubmitted() {
    if (verificationCode.length == 4) {
      // showDialog(
      //   context: context,
      //   builder: (context) {
      //     return AlertDialog(
      //       title: Text("Verification Code"),
      //       content: Text('Code entered is $verificationCode'),
      //     );
      //   },
      // );
      Navigator.pushNamed(context, '/medical/add');
    }
  }

  // Function to handle OTP resend
  void resendOtp() {
    // Implement your OTP resend logic here
    print("Resending OTP...");
  }

  // Function to handle button press
  void onButtonPressed(String value) {
    setState(() {
      if (verificationCode.length < 4) {
        verificationCode += value;
        otpController.text = verificationCode;
      }
    });

    // Check if the 4th digit is entered
    if (verificationCode.length == 4) {
      onOtpSubmitted();
    }
  }

  // Function to handle backspace
  void onBackspacePressed() {
    setState(() {
      if (verificationCode.isNotEmpty) {
        verificationCode = verificationCode.substring(0, verificationCode.length - 1);
        otpController.text = verificationCode;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: loginpagecolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: MediaQuery.of(context).size.height / 6),
              SizedBox(height: 10),
              Align(
                child: Text(
                  "Enter OTP",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                alignment: Alignment.topCenter,
              ),
              SizedBox(height: 20),
              Align(
                child: Text(
                  "Please Enter the OTP sent to your mail/phone number.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DigitBox(verificationCode.length > 0 ? verificationCode[0] : ""),
                    DigitBox(verificationCode.length > 1 ? verificationCode[1] : ""),
                    DigitBox(verificationCode.length > 2 ? verificationCode[2] : ""),
                    DigitBox(verificationCode.length > 3 ? verificationCode[3] : ""),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: resendOtp,
                child: Text(
                  "Didn't Get OTP? Resend.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton("1", onButtonPressed),
                    CustomButton("2", onButtonPressed),
                    CustomButton("3", onButtonPressed),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton("4", onButtonPressed),
                    CustomButton("5", onButtonPressed),
                    CustomButton("6", onButtonPressed),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton("7", onButtonPressed),
                    CustomButton("8", onButtonPressed),
                    CustomButton("9", onButtonPressed),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(width: 50,),
                    CustomButton("0", onButtonPressed),
                    CustomButton("<", onBackspacePressed), // Backspace button
                  ],
                ),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}

class DigitBox extends StatelessWidget {
  final String digit;

  const DigitBox(this.digit);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white, // Filled with white color
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          digit,
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed; // Change this line

  const CustomButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (text == "<") {
          onPressed(); // Call without passing any argument
        } else {
          onPressed(text);
        }
      },
      child: Text(text, style: TextStyle(color: Color(0XFF5D5D5D),fontSize: 25)),
      backgroundColor: Colors.white,
    );
  }
}


