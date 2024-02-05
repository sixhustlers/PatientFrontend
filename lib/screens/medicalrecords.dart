import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
import 'package:patientfrontend/util/custombottomNavigation.dart';
import 'package:patientfrontend/util/medicalheader.dart';
import 'package:patientfrontend/util/recordtile.dart';
class MedicalRecords extends StatefulWidget {
  const MedicalRecords({Key? key}) : super(key: key);

  @override
  State<MedicalRecords> createState() => _MedicalRecordsState();
}

class _MedicalRecordsState extends State<MedicalRecords> {
  TextEditingController t1=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(itemBuilder: (BuildContext,int index){
            if(index==0){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  width: double.infinity,
                  child:MedicalHeader(t: t1,),
                ),
              );
            }
            return RecordTile();
          },itemCount: 4,),
        ),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.white, onPressed: () {
          Navigator.pushNamed(context, '/medical/add');
        },focusColor:loginpagecolor,child: Icon(Icons.add),),
        bottomNavigationBar: CustomBottomNavigaton(index: 1,),
      ),
    );
  }
}
