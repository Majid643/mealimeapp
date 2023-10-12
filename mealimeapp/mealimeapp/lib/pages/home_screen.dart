import 'package:flutter/material.dart';
import 'package:mealimeapp/pages/signin_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
      children: [
        Center(
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              image: DecorationImage(image: AssetImage('assets/images/orane.jpg'),fit: BoxFit.cover)
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("mealime",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 660,left: 135),
          child: Column(
          
            children: [
            
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
              
                    ),
                    child: Center(child: Text("Get Started",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
            
              
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 730,left: 100),
            child: Row(
              
              children: [
                Text("already have a member ?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin_Screen()));
                }, child:   Text("Sign in ",style: TextStyle(fontWeight: FontWeight.bold),),)
              ],
            ),
          )
      ],
     ),
     
    );
  }
}