import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../util/custombottomNavigation.dart';
import '../util/textControllers.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  String? genderVal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hii Avinash...",
                      style: TextStyle(fontSize: 24),
                    ),
                    FilledButton(
                        onPressed: () {
                          debugPrint('Received click');
                        },
                        child: const Text("Skip"))
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "We want to offer the best service in everything we do. It would really help us if you could give us the right information about yourself. Don't worry, your details are kept private and will help us give you the right kind of help.",
                  style: TextStyle(
                    letterSpacing: 1.2,
                    height: 1.8,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    iconSize: 64,
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text("Add Image"),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Condition",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                const CustomTextControllers(hint: "ex: Fever"),
                const SizedBox(height: 20.0),
                const Text(
                  "Mobile Number",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                const CustomTextControllers(hint: "ex: 9864212111"),
                const SizedBox(height: 20.0),
                const Text(
                  "Sex",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Wrap(
                  spacing: 10.0,
                  children: [
                    ChoiceChip(
                      label: const Text('Male'),
                      selected: genderVal == "Male",
                      onSelected: (bool selected) {
                        setState(() {
                          genderVal = selected ? "Male" : null;
                        });
                      },
                    ),
                    ChoiceChip(
                      label: const Text('Female'),
                      selected: genderVal == "Female",
                      onSelected: (bool selected) {
                        setState(() {
                          genderVal = selected ? "Female" : null;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          // // Show date picker and update selectedDate
                          // DateTime? pickedDate = await showDatePicker(
                          //   context: context,
                          //   initialDate: DateTime.now(),
                          //   firstDate: DateTime(1900),
                          //   lastDate: DateTime.now(),
                          // );
                          //
                          // if (pickedDate != null && pickedDate != selectedDate) {
                          //   // If a date is selected, update the state
                          //   setState(() {
                          //     selectedDate = pickedDate;
                          //   });
                          // }
                        },
                        icon: const Icon(Icons.date_range_outlined,
                            color: Colors.black)),

                    // Display the selected date
                    // Text(selectedDate != null ? "Selected Date: ${selectedDate!.toLocal()}".split(' ')[0] : ""),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Profession",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                const CustomTextControllers(hint: "ex: 9864212111"),
                const SizedBox(height: 20),
                const Text(
                  "Blood Group",
                  style: TextStyle(
                      color: loginpagecolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                const CustomTextControllers(hint: "ex: 9864212111"),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(
                              color: loginpagecolor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          child: const CustomTextControllers(hint: "In meters"),
                          width: MediaQuery.of(context).size.width / 2.8,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                              color: loginpagecolor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.8,
                          child: const CustomTextControllers(hint: "In Kg"),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Align(child: FilledButton(onPressed: (){}, child: Text("Submit")))
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigaton(index: 1),
      ),
    );
  }
}
