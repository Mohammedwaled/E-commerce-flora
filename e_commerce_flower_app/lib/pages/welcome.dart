// ignore_for_file: file_names, deprecated_member_use, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Welcome extends StatelessWidget {
   Welcome ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
       body: SizedBox(
        width: double.infinity,
         child: Stack( children: [
        SizedBox(
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
            
          SizedBox(
            height: 99,
          
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
              child: Text("welcome "   , style: TextStyle( 
               fontSize: 28,
                     
              ),),
            ),
          ),
          SizedBox(
              
          ),
          SvgPicture.asset("assets/icons/chat.svg",),
          SizedBox(

            height: 21,
          ),
                        ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "/Login");
                  },
                  
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[400]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 92, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 24,
                    color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                  ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "/signup");
                  },
                  
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 82, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "signup",
                    style: TextStyle(fontSize: 24,
                    color: Colors.black,
                    ),
                  ),
                ),
              
           
           ],
          
          
          ),
        ),












         
         Positioned(child: Image.asset("assets/img/main_top.png",width: 100,),
         left: 0,
         
         
         ),
         
        
         Positioned(child: Image.asset("assets/img/main_bottom.png",width: 80,
         
         
         ),
         
         bottom: 0,
         
         
         ),
         
         
         
         ],
         
         
         
         
         ),
       ),
      
      
      ),
    );
  }
}