import 'package:flutter/material.dart';
class PreferenceScreen extends StatefulWidget {
  @override
  _PreferenceScreenState createState() => _PreferenceScreenState();
}
class _PreferenceScreenState extends State<PreferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation:0.0,
      //   title: Text("Preferences",style: TextStyle(color: Colors.brown,fontSize: 16,fontWeight: FontWeight.bold),),
      //   centerTitle: true,
      //   leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back,color: Colors.brown,)),
      // ),
      body: ListView(
        children: [
            Image.asset("assets/images/cappuccino.png",height:MediaQuery.of(context).size.height*0.4),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Macciato',style: TextStyle(color: Colors.black,fontSize: 16),),
                      Text('36 EGP',style: TextStyle(color: Colors.black45,fontSize: 14),),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                  Text('1',style: TextStyle(color: Colors.brown,fontSize: 20),),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)
                        ),
                      side: BorderSide(color: Colors.brown)
                    ),
                    child: Text('-'),
                    color: Colors.transparent,
                    elevation: 0.0,
                    textColor: Colors.brown,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0)),
                        side: BorderSide(color: Colors.brown)
                    ),
                    child: Text('+'),
                    color: Colors.transparent,
                    elevation: 0.0,
                    textColor: Colors.brown,
                  ),
                ],
              ),
            ),
          Card(
           child:Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Size",style: TextStyle(color: Colors.brown,fontSize: 16),),
               ),
               SizedBox(width: MediaQuery.of(context).size.width*0.4,),
               IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:60,)),
               IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:70,)),
               IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:80,)),
             ],
           ),
          ),
          Card(
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Suggar",style: TextStyle(color: Colors.brown,fontSize: 16),),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:60,)),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:70,)),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:80,)),
              ],
            ),
          ),
          Card(
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Additions",style: TextStyle(color: Colors.brown,fontSize: 16),),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:60,)),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:70,)),
                IconButton(onPressed: (){}, icon: Image.asset("assets/images/cappuccino.png",height:80,)),
              ],
            ),
          ),
          Card(
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Total :",style: TextStyle(color: Colors.brown,fontSize: 16),),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.6,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("42 EGP",style: TextStyle(color: Colors.brown,fontSize: 16,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height:MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.8,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('AddToCard',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                  primary:Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
