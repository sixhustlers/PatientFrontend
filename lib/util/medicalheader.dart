import 'package:flutter/material.dart';

import '../colors/colors.dart';

class MedicalHeader extends StatelessWidget {
  final TextEditingController? t;
  const MedicalHeader({Key? key,this.t}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
      SizedBox(height: 10),
      Row(
        children: [
          CircleAvatar(radius: 50,child: Icon(Icons.person),),
          SizedBox(width: 10,),
          Column(
            children: [
              Text("Hi Avinash!",style: TextStyle(fontSize: 28),),
              SizedBox(height: 10,),
              Text("review your reports",style: TextStyle(fontSize: 20),),
            ],
          )
        ],
      ),
      SizedBox(height: 20,),
      SizedBox(
        width: double.infinity,
        height: 70,
        child: SizedBox(
            height: MediaQuery.of(context).size.height/20,
            width: double.infinity,
            child: TextField(
              controller: t,
              keyboardType: TextInputType.text,
              style: TextStyle(color:Colors.black),
              decoration: InputDecoration(
                iconColor: Colors.blueGrey,
                icon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search_sharp),
                ),
                hintText: "Search a Record",
                hintStyle: TextStyle(color:Colors.blueGrey),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color:loginpagecolor)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: loginpagecolor),
                ),
                border: InputBorder.none,
              ),
              cursorColor: loginpagecolor,
            ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(onPressed: (){},child: Row(
            children: [
              Text("Date"),
              SizedBox(width: 5,),
              Icon(Icons.arrow_drop_down),
            ],
          ),),
          MaterialButton(onPressed: (){},child: Row(
          children: [
            Text("Filters"),
            SizedBox(width: 5,),
            Icon(Icons.arrow_drop_down),
          ],
          ),),
        ],
      ),
      SizedBox(height: 5,),
    ],
    );
  }
}
