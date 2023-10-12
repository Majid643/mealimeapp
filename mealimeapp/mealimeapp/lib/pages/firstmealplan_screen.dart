import 'package:flutter/material.dart';
import 'package:mealimeapp/pages/bottomp_screen.dart';
// import 'package:mealimeapp/pages/bottomp_screen.dart';

class FirstmealPlan_Screen extends StatefulWidget {
  const FirstmealPlan_Screen({super.key});

  @override
  State<FirstmealPlan_Screen> createState() => _FirstmealPlan_ScreenState();
}

class _FirstmealPlan_ScreenState extends State<FirstmealPlan_Screen> {
  
   int pageIndex = 0; 
  
  final pages = [ 
    const Page1(), 
    const Bottomp_Screen(),
    const Page3(), 
    const Page4(), 
  ]; 

  @override 
  Widget build(BuildContext context) { 
    return  Scaffold( 
      
      backgroundColor: const Color(0xffC4DFCB), 
      appBar: AppBar( 
        leading: Icon( 
          Icons.menu, 
          color: Theme.of(context).primaryColor, 
        ), 
      
        centerTitle: true, 
        backgroundColor: Colors.white, 
      ), 
      body: pages[pageIndex], 
      bottomNavigationBar: buildMyNavBar(context), 
    ); 
  } 
  
  Container buildMyNavBar(BuildContext context) { 
    return Container( 
      height: 60, 
      
      decoration: BoxDecoration( 
        color: Theme.of(context).primaryColor, 
        borderRadius: const BorderRadius.only( 
          topLeft: Radius.circular(20), 
          topRight: Radius.circular(20), 
        ), 
      ), 
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [ 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 0; 
              }); 
            }, 
            icon: pageIndex == 0 
                ? const Icon( 
                    Icons.home_filled, 
                    
                    color: Colors.white, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.home_outlined, 
                    color: Colors.white, 

                    size: 35, 
                  ), 
                   
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 1; 
              }); 
            }, 
            icon: pageIndex == 1 
                ? const Icon( 
                    Icons.work_rounded, 
                    color: Colors.white, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.work_outline_outlined, 
                    color: Colors.white, 
                    size: 35, 
                  ), 
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 2; 
              }); 
            }, 
            icon: pageIndex == 2 
                ? const Icon( 
                    Icons.widgets_rounded, 
                    color: Colors.white, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.widgets_outlined, 
                    color: Colors.white, 
                    size: 35, 
                  ), 
          ), 
          IconButton( 
            enableFeedback: false, 
            onPressed: () { 
              setState(() { 
                pageIndex = 3; 
              }); 
            }, 
            icon: pageIndex == 3 
                ? const Icon( 
                    Icons.person, 
                    color: Colors.white, 
                    size: 35, 
                  ) 
                : const Icon( 
                    Icons.person_outline, 
                    color: Colors.white, 
                    size: 35, 
                  ), 
          ), 
        ], 
      ), 
    ); 
  } 
} 
  
class Page1 extends StatelessWidget { 
  const Page1({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    return
      Container( 
        color: Colors.white,
        child: Center( 
          child: Padding(
            padding: const EdgeInsets.only(top: 200,),
            child: Column(
              children: [
                Text(
                  "Your Personalized meal plan",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Plan Your  meals for the  entire week in minutes\nbuild your first meal plane to get started!",
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomp_Screen()));
                  },
                  child: InkWell(onTap: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomp_Screen()));
                  },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Build on Your First Meal Plane",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )
              ],
            ),
          ),
      )
      );

  } 
} 
  

  
class Page3 extends StatelessWidget { 
  const Page3({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      color: const Color(0xffC4DFCB), 
      child: Center( 
        child: Text( 
          "Page Number 3", 
          style: TextStyle( 
            color: Colors.green[900], 
            fontSize: 45, 
            fontWeight: FontWeight.w500, 
          ), 
        ), 
      ), 
    ); 
  } 
} 
  
class Page4 extends StatelessWidget { 
  const Page4({Key? key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      color: const Color(0xffC4DFCB), 
      child: Center( 
        child: Text( 
          "Page Number 4", 
          style: TextStyle( 
            color: Colors.green[900], 
            fontSize: 45, 
            fontWeight: FontWeight.w500, 
          ), 
        ), 
      ), 
    ); 
  } 
} 
     
  



  

