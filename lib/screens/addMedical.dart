import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
import 'package:patientfrontend/util/custombottomNavigation.dart';
import 'package:patientfrontend/util/textControllers.dart';
class AddMedical extends StatefulWidget {
  const AddMedical({Key? key}) : super(key: key);

  @override
  State<AddMedical> createState() => _AddMedicalState();
}

class _AddMedicalState extends State<AddMedical> {
  DateTime? selectedDate;
  // Color darkBlueColor = Color(0xFF001F3F);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(12.0),
        //       child: Icon(Icons.check,size: 25,color: Colors.black,),
        //     )
        //   ],
        // ),
        body: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                          color: darkBlueColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Icon(Icons.keyboard_double_arrow_left_outlined,color: Colors.white,),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                          color: darkBlueColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Icon(Icons.check,color: Colors.white,),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height/25),
                Align(child: Text("Condition", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(child: CustomTextControllers(hint: "ex: Fever"),width: double.infinity,),
                ),
                SizedBox(height: 10),
                Align(child: Text("Doctor Name", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(child: CustomTextControllers(hint: "ex: Dr Thomas Janes"),width: double.infinity,),
                ),
                SizedBox(height: 10),
                Align(child: Text("Hospital Name", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(child: CustomTextControllers(hint: "ex: Local Hospital"),width: double.infinity,),
                ),
                SizedBox(height: 10),
                Align(child: Text("Date of Birth", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                Row(
                  children: [
                    IconButton(onPressed: () async {
                      // Show date picker and update selectedDate
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );

                      if (pickedDate != null && pickedDate != selectedDate) {
                        // If a date is selected, update the state
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    }, icon: Icon(Icons.date_range_outlined, color: Colors.black)),
                    SizedBox(width: 5),
                    // Display the selected date
                    Text(selectedDate != null ? "Selected Date: ${selectedDate!.toLocal()}".split(' ')[0] : ""),
                  ],
                ),
                SizedBox(height: 10),
                Align(child: Text("Medications", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.black)),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(child: CustomTextControllers(hint: "Document info"),width:MediaQuery.of(context).size.width/1.5,),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(child: Text("Lab Report", style: TextStyle(color: loginpagecolor,fontSize: 18)),alignment: Alignment.centerLeft,),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.add, color: Colors.black)),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(child: CustomTextControllers(hint: "Report info"),width: MediaQuery.of(context).size.width/1.5,),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],

            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigaton(index: 1),
      ),
    );
  }
}
