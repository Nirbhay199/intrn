// ignore_for_file: file_names

import 'package:demo/Login.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
     onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    	builder: (context) => const Login()),
  );
},

      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
       Container(
       height: 50,width:400, 
    
    decoration: const BoxDecoration(
         color: Colors.orange,
    borderRadius: BorderRadius.all(Radius.circular(20))
    ),     
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
    Text("GET STARTED",style: TextStyle(color:Colors.white),),
    Icon(Icons.arrow_forward,
    color: Colors.white,),
    ],),
    ),
        ],
      ),
    );
  }
}
