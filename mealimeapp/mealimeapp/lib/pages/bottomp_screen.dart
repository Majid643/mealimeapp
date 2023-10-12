import 'package:flutter/material.dart';

class Bottomp_Screen extends StatefulWidget {
  const Bottomp_Screen({super.key});

  @override
  State<Bottomp_Screen> createState() => _Bottomp_ScreenState();
}

// ignore: camel_case_types
class _Bottomp_ScreenState extends State<Bottomp_Screen> {
   int favouriteCount = 0;
  bool? ischecked = false;
  bool? ischeckem = false;
  bool? ischeckems = false;
  bool? ischeck = false;
  bool? ischeckes = false;
  bool? isfruit = false;
  bool? isapple = false;
  bool? isfruits = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding:const  EdgeInsets.only(
              top: 35,
            ),
            child:ListView(children: [
              const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Groceries ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              ),
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 375,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                  const   Text(
                      "Allergen warning",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  const   Text(
                      "Ingredients with a Symbol may contain\nallergens. Tap an ingredeint for more\nand make sure to purchasean allergen\nfree variety ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                const     SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child:const Center(
                            child: Text(
                          "Go it",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        )
                        ),
                        
                      ),
                      
                    ),
                  ],
                ),
              ),
            ),
              ),
              const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Produce ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              ),
              ElevatedButton(onPressed: (){
              showModalBottomSheet<void>(
            // context and builder are
            // required properties in this widget
            context: context,
            builder: (BuildContext context) {
              // we set up a container inside which
              // we create center column and display text
 
              // Returning SizedBox instead of a Container
              return const SizedBox(
                height: 300,
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                      padding:  EdgeInsets.all(15.0),
                      child:  Text('Grocery Shopping made easy ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    ),
                    ListTile(
                      title: Text("Step 1"),
                      subtitle: Text("Check off sample ypu already have. ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),

                     ListTile(
                      title: Text("Step 2"),
                      subtitle: Text("Add Grocery you may need. ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                     ListTile(
                      title: Text("Step 3"),
                      subtitle: Text("Shop easily in store or online . ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    ],
                  ),
                )
                );
                }
                );
              }, child: Text("Open ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
             const SizedBox(
            height: 20,
              ),
            const  Divider(),
              ListTile(
            leading: Checkbox(
                value: ischecked,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (newBool) {
                  setState(() {
                    ischecked = newBool;
                  });
                }),
            title:const Text(
              "mango",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
           const   Divider(),
              ListTile(
            leading: Checkbox(
                value: ischeckem,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (oldBool) {
                  setState(() {
                    ischeckem = oldBool;
                  });
                }),
            title:const Text(
              "Apple",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
             const Divider(),
              ListTile(
            leading: Checkbox(
                value: ischeck,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (mBool) {
                  setState(() {
                    ischeck = mBool;
                  });
                }),
            title:const Text(
              "banana",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing:const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
              const Divider(),
              ListTile(
            leading: Checkbox(
                value: ischeckems,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (nBool) {
                  setState(() {
                    ischeckems = nBool;
                  });
                }),
            title:const Text(
              "Orange",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing:const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
             const Divider(),
              ListTile(
            leading: Checkbox(
                value: ischeckes,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (gBool) {
                  setState(() {
                    ischeckes = gBool;
                  });
                }),
            title: const Text(
              "garlic",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
              const Divider(),
              ListTile(
            leading: Checkbox(
                value: isfruits,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (wBool) {
                  setState(() {
                    isfruits = wBool;
                  });
                }),
            title: const Text(
              "frouite",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: const Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
             const  Divider(),
              ListTile(
            leading: Checkbox(
                value: isfruit,
                activeColor: Colors.black,
                //  tristate: true,
                onChanged: (zBool) {
                  setState(() {
                    isfruit = zBool;
                  });
                }),
            title: const Text(
              "Olive",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing:const  Text(
              "1/2",
              style: TextStyle(fontSize: 18),
            ),
              ),
            ]
            ),

            ),
floatingActionButton: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         boxShadow: [



         ]
       ),
        child: FloatingActionButton(
          onPressed: (){
         
          },
          child: Icon(Icons.add,size: 28),
        ),

      ),
            );
  }
}
