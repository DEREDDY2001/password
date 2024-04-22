import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gulpp_demo_ds/main.dart';

class RouteInfo extends StatelessWidget {
  const RouteInfo({super.key}); 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(45, 157, 100, 1)
      ),
    );    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
        home: const RouteMap(),  
    );
  } 
}

class RouteMap extends StatefulWidget{
  const RouteMap({super.key});

  @override
  State<RouteMap> createState() => _RouteMap();
}
class _RouteMap extends State<RouteMap>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body:Padding(
          padding: const EdgeInsets.fromLTRB(50,100,0,100),
          child: Container(
            width: 317,
            height: 247,
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20.0),),border:Border.all(color: const Color.fromARGB(111, 73, 222, 9),width: 1.0),color: Colors.white,),
            margin: const EdgeInsets.fromLTRB(10,25,10,10),
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(40,25,40,0),
                child: Column(
                children: [
                  Text("Enter Your Password",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          Column(
            children: [
              Padding(padding: 
                const EdgeInsets.fromLTRB(29,20,29,0),
                child: Container(
                  width: 243,
                  height: 37,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),border: Border.all(color: const Color.fromRGBO(154, 154, 154, 1),width: 2.0)),
                  child: const TextField(decoration: InputDecoration(
                    labelText: "Current Password:",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color.fromRGBO(154,154,154,1),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15,10,0,10),
                  ),
                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(29,10,29,3),
                  child: Container(
                  width: 243,
                  height: 37,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),border: Border.all(color: const Color.fromRGBO(154,154,154,1),width:2.0,),),
                  child: const TextField(decoration: InputDecoration(
                      labelText: "New Password",
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color.fromRGBO(154,154,154,1),
                    ),
                    contentPadding:EdgeInsets.fromLTRB(15,10,0,10),
                    ),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(44,10,44,25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child: TextButton(
                      onPressed:() => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyApp())),
                    style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(158,217,255,1),),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 7.0,horizontal: 28.0),),
                    ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                        fontFamily: "poppins",
                        fontSize:11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),
                  child: TextButton(
                    onPressed:null,
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize:11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    overflow: TextOverflow.visible,
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(158,217,255,1),),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 7.0,horizontal: 28.0),),
                    ),
                  ),
                ),
                // SizedBox
              ],
            ),
            ),        
          ],
        ),
      ],
    ),
    ),
    
    
    ),

      );
  }
  void _incrementCounter(){

  }
  
}