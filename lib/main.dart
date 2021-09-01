import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStart(),
    );
  }
}
class GetStart extends StatelessWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
                     Stack(

                  children: [
                    Container(
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            ),Lottie.asset('assets/22977-cooking-at-home-character.json') , ],),
                      const Padding(
                          padding: EdgeInsets.only(top:30.0),
                          child:  Text("Get Homemade Food\n\t\t\t\tat your doorstep",style: TextStyle(
                            color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
                          )),

                        ),
                         Padding(
                           padding: const EdgeInsets.only(top:25.0,left: 20),
                           child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",style: Theme.of(context).textTheme.subtitle1),

                         ),
                         const SizedBox(height:100),
                      const CustomButton(),

          ],
        ),
      
    );
  }
}
