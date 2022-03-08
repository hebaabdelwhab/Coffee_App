import 'package:coffee_app/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}
class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/cup1.png'),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,8,10,8),
            child: Text("Get the best coffee in the town!",style: TextStyle(color: Colors.brown,fontWeight:FontWeight.w600,fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,8,10,8),
            child: Row(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.4,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Register',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                      primary:Colors.brown,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height:MediaQuery.of(context).size.height*0.06,
                  width:MediaQuery.of(context).size.width*0.4,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement( MaterialPageRoute (
                        builder: (BuildContext context) => logIn()));
                    },
                    child: Text('LogIn',style: TextStyle(color: Colors.brown),),
                    style: OutlinedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
                        side:BorderSide(width:2.0,color: Colors.brown),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height:MediaQuery.of(context).size.height*0.06,
            width:MediaQuery.of(context).size.width*0.85,
            child: SignInButton(
              Buttons.Facebook,
              text: "Connect with facebook",
              onPressed: () {},
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
