import 'package:coffee_app/bottomScreen.dart';
import 'package:flutter/material.dart';
class locationScreen extends StatefulWidget {
  @override
  _locationScreenState createState() => _locationScreenState();
}
class _locationScreenState extends State<locationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.asset("assets/images/map1.png",width:double.infinity,
          height: MediaQuery.of(context).size.height*0.6,fit:BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Starbucks",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 30),),
            ),
          ),
          Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(Icons.access_time),
              Text("4:24 PM"),
              SizedBox(width: 15,),
              Icon(Icons.add_location_sharp),
              Text("20 min"),
            ],
          ),
         ),
        Container(
          height:MediaQuery.of(context).size.height*0.06,
          width: MediaQuery.of(context).size.width*0.8,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => bottomScreen(),)
              );
            },
            child: Text('View Menu',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(shape: StadiumBorder(),
              primary:Colors.brown,
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Address",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w600,fontSize: 20),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("3 Nisr City, cairo",style: TextStyle(color: Colors.black45,fontSize: 15),),
            ),
          ),
        ],
      ),
    );
  }
}
