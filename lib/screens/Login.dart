import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  bool selected=false;
  //decoration: InputDecoration(hintText: "Enter email",hintStyle: TextStyle(color: Colors.white),icon: Icon(Icons.account_circle_rounded,color: Colors.white,),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),border: InputBorder.none)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginpagecolor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 56),),
            SizedBox(height: 20,),
            Text("Glad to see You!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 32)),
            SizedBox(height: 25,),
            Align(alignment: Alignment.topLeft,child: Text("Email Address",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),
            SizedBox(height: 15,),
            TextField(
              controller: t1,
              decoration: InputDecoration(
                hintStyle: TextStyle(color:loginpagecolor),
                fillColor: Colors.white,
                filled: true,
                hintText: "medic@domain.com",
                prefixIcon: Icon(Icons.email, color: loginpagecolor),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),

            ),
            SizedBox(height: 15,),
            Align(alignment: Alignment.topLeft,child: Text("Full Name",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
            SizedBox(height: 15,),
            TextField(
              controller: t2,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: loginpagecolor),
                fillColor: Colors.white,
                filled: true,
                hintText: "Full Name",
                prefixIcon: Icon(Icons.account_circle, color: loginpagecolor),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),

            SizedBox(height: 15,),
            Row(
              children: [
                Checkbox(value: selected, onChanged: (value){

                  setState(() {
                    selected=!selected;
                  }
                  );
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
                  ),
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return selected ?Colors.green : Colors.white; // Adjust the colors as needed
                    },
                  ),
                ),
                SizedBox(width: 3,),
                Text("I agree to Privacy Policy.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
              ],
            ),
            SizedBox(height: 20,),
            MaterialButton(
              elevation: 2.5,
              onPressed: (){
              //go to next page
              if(t1.text.isNotEmpty&&t2.text.isNotEmpty&&selected){
                Navigator.pushNamed(context, '/otp');
              }
            },color: Colors.white,textColor: loginpagecolor,child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),minWidth: MediaQuery.of(context).size.width/2.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0), // Set the border radius
              ),
            )
          ],
        ),
      ),
    );
  }
}

