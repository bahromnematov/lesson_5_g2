import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Lesson 5"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Container(
                  color: Color(0xFF68DCD1),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Jonathon Patricsion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "UI/UX Disigner |Fron End Developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_pin,color: Colors.white,),
                          Text(
                            "Comilla ,Banglades",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  )),
                ),flex: 3,),
                Expanded(
                    child: Container(
                  color: Colors.white,
                      child: Center(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("2332",style: TextStyle(color: Colors.blue,fontSize: 30),),
                                Text("Application",style: TextStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                            SizedBox(width: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("2332",style: TextStyle(color: Colors.blue,fontSize: 30),),
                                Text("Application",style: TextStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                            SizedBox(width: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("2332",style: TextStyle(color: Colors.blue,fontSize: 30),),
                                Text("Application",style: TextStyle(color: Colors.black,fontSize: 16),),
                              ],
                            ),
                          ],
                        ),
                      ),
                ),flex: 2,),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      color: Color(0xFFF3FDFE),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("About Jonathon",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 30,),
                          Text("About Jonathon ahgcga scactatcuatcauctausctac ag xg a ",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.7)),),
                        ],
                      ),
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/img_3.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
