import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

Widget buildStaticOtpVerificationBody() {
  return Column(
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/otp_verification_img.png',
        ),
      ),
      const SizedBox(
        height: 24,
      ),
      const Text(
        'Verification',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Enter your 6 Digit OTP below ",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black38,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 28,
      ),
    ],
  );
}

Widget buildBottomOtpVerificationBody() {
  return Column(
    children: [
      const SizedBox(
        height: 18,
      ),
      const Text(
        "Didn't received any code?",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black38,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Get.back();
        },
        child: const Text(
          "Resend New Code",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
