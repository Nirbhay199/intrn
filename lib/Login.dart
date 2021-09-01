// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {

  TextEditingController phoneController =
      TextEditingController(); 
  TextEditingController passward = TextEditingController();
  int charLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
            body: SingleChildScrollView(
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(

                  children: [
                    Container(
            height:MediaQuery.of(context).size.height/2.5,
            width:MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            ),Padding(
              padding: const EdgeInsets.only(top: 140.0,left: 50),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                 Text("Login",style: TextStyle(color: Colors.white,fontSize: 30),), 
                 SizedBox(height: 20,),
               Text("Welcome back,you've been missed ",style: TextStyle(color: Colors.white,fontSize: 20),), 
                ],
              ),
            ) , ],),
            const Padding(
              padding: EdgeInsets.only(top:18.0,left: 10),
              child: Text("Phone number",style: TextStyle(color:Colors.black,fontWeight:FontWeight.w300,fontSize:15)),
            ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
onChanged: _onChanged,
                      maxLength: 10,

                      // ignore: deprecated_member_use
                      inputFormatters: [WhitelistingTextInputFormatter(RegExp(r"[0-9]"))],
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffixIcon: charLength==10?const Icon(Icons.check_box_rounded,color: Colors.blue,):const Icon(Icons.check_box_outline_blank_rounded,color: Colors.blue,),
                                                counterText: '',

                      ), 
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      controller: passward,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                       counterText: '',
                        hintText: "PASSWORD",
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Row(mainAxisAlignment: MainAxisAlignment.center,
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
Text("Login",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
Icon(Icons.arrow_forward,
color: Colors.white,),
],),
),
      ],
    ),
    
                  ),
    const SizedBox(
      height: 20,
    ),
     Center(
       child: RichText(
                        text: const TextSpan(
                          text: 'Dont have an account?',
                          style: TextStyle(
                            fontSize: 15,
                                  color: Colors.black38,
                                                 fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign Up',
                            
                                
                                style: TextStyle(
                            
                            color: Colors.black,      fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
     ), const SizedBox(
height: 50,
     ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Container(height: 2,width: 150,
      color: Colors.black38,),
      const Text("Or Continue with"),
      Container(height: 2,width: 150,
      color: Colors.black38,),
    ],),
        const SizedBox(height: 50,),

    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: const [
            CircleAvatar(radius: 31,
            backgroundColor: Colors.black,
          child: CircleAvatar(
            radius:30,
            backgroundColor: Colors.white,
            child: Text("F",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25),),
          ),
        ),
        SizedBox(width: 15,),
        CircleAvatar(radius: 31,
            backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Text("G",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25),),
          ),
        ),
        SizedBox(width: 15,),
        CircleAvatar(radius: 31,
            backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Text("T",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 25),),
          ),
        ),
          ],
        ),
      ],
    ),
    const SizedBox(
      height: 50,
      
    ),
    
    Center(
      child: SizedBox(
        height: 55,
        width: 100,
        
        child:  ElevatedButton(
    child: const Text("SKIP",style: TextStyle(color: Colors.black),),
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.black,
      side: const BorderSide(color: Colors.black, width:1),
    ),
    onPressed: () {
      // ignore: avoid_print
      print('Pressed');
    },
  ),),
    
    
    ),
    const SizedBox(
      height: 20,
    ),
                ],
              ),
            ),
          );
        
  }
}
