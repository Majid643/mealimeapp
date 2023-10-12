import 'package:flutter/material.dart';
import 'package:mealimeapp/pages/firstmealplan_screen.dart';

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontrolller = TextEditingController();

  bool passwordVisible=false; 
      
   @override 
    void initState(){ 
      super.initState(); 
      passwordVisible=true; 
    }     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.green,)),
        title: Text("Back",style: TextStyle(color: Colors.green),),

      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: ListView(
            children: [
              Text("Sign In ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
                Text("Email Adress",style:TextStyle(fontWeight: FontWeight.bold) ),
                SizedBox(height: 6,),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                     border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(7))),
       
           contentPadding: EdgeInsets.all(10),
           hintText: 'Enter email',
      
                  ),
                ),
////////////////////////////
                   SizedBox(height: 30,),
                Text("Password",style:TextStyle(fontWeight: FontWeight.bold) ),
                SizedBox(height: 6,),
                TextField(
                  controller: passwordcontrolller,
                   obscureText: passwordVisible, 
                  decoration: InputDecoration( 
                    
                  hintText: 'Password',
                    helperStyle:TextStyle(color:Colors.green), 
                    border: OutlineInputBorder(
                      
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(5))),
              contentPadding: EdgeInsets.all(13),
                    suffixIcon: IconButton( 
                      icon: Icon(passwordVisible 
                          ? Icons.visibility 
                          : Icons.visibility_off), 
                      onPressed: () { 
                        setState( 
                          () { 
                            passwordVisible = !passwordVisible; 
                          }, 
                        ); 
                      }, 
                    ), 
                    alignLabelWithHint: false, 
                    filled: true, 
                  ), 
                  keyboardType: TextInputType.visiblePassword, 
                  textInputAction: TextInputAction.done, 
                ), 
                SizedBox(height: 40,),
                InkWell(
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstmealPlan_Screen()));
                  },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    ),
                    child: Center(child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
                  ),
                ),
               const  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: const   Row(
                    children: [
                      Text("By using Mealime you agree to our  "),
                      Text("Terms",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
              
                    ],
                  ),
              )
             ] ),  
      ), 
                )
    );
            
          
        
  }
}