import 'package:flutter/material.dart';
import 'package:patientfrontend/util/doctorRecportsCard.dart';
import 'package:patientfrontend/util/textControllers.dart';

class ReviewRecords extends StatefulWidget {
  const ReviewRecords({super.key});

  @override
  State<ReviewRecords> createState() => _ReviewRecordsState();
}

class _ReviewRecordsState extends State<ReviewRecords> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 26,
                        child: Text("AV"),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'Hii ',
                              style: TextStyle(color: Colors.black, fontSize: 24),
                              children: [
                                TextSpan(
                                  text: 'Avinash!',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "review your reports",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  const CustomTextControllers(hint: "Search"),
                  const SizedBox(height: 20),
                  const DoctorReportCard(),
                  const DoctorReportCard(),
                ],
              ),
            ),
          ),
        ));
  }
}



