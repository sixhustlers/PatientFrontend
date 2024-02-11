import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';

class RecordTile extends StatefulWidget {
  const RecordTile({Key? key}) : super(key: key);

  @override
  State<RecordTile> createState() => _RecordTileState();
}

class _RecordTileState extends State<RecordTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),  // Adjust the shadow color and opacity as needed
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(-4, 0),  // Offset to create a shadow on the left side
            ),
          ],
          border: Border(
            left: BorderSide(
              color: Colors.amber,  // Amber color for the left border
              width: 2,  // Adjust the border width as needed
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height/5,
        width: double.infinity,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.date_range_outlined),
                    SizedBox(width: 5,),
                    Text("2 months ago"),
                  ],
                ),
                Text("Common Cold",style: TextStyle(color: loginpagecolor),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(radius: 30,),
                SizedBox(width: 10,),
                Text("Doctor Name"),
              ],
            ),
            Divider(thickness: 1.0,color: Colors.grey,),
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.grey,),
                SizedBox(width: 5,),
                Text("Hospital Name"),
              ],
            ),
          ]
          ),
        ),
      ),
    );
  }
}
