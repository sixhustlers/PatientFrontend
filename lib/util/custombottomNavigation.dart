import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
class CustomBottomNavigaton extends StatelessWidget {
  int index=0;
  CustomBottomNavigaton({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),label: "Home"),
      BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.receipt_outlined)),label: "Reports"),
      BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.date_range_outlined)),label: "Appointment"),
      BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.person)),label: "Profile"),
    ],
        currentIndex: index,
        selectedItemColor: loginpagecolor,
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey),
        unselectedItemColor: Colors.blueGrey,
    );
  }
}
