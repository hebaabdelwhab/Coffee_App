import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'locationScreen.dart';

class logIn extends StatefulWidget{
  @override
  _logInState createState() => _logInState();
}
class _logInState extends State<logIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController EmailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon:Icon(Icons.arrow_back,color: Colors.brown,),
        onPressed: (){
              Navigator.of(context).pop();
         },
        ),
        centerTitle:true,
        backgroundColor:Colors.transparent,
        elevation: 0.0,
        title:Text("Log In",style: TextStyle(color:Colors.brown,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(alignment:Alignment.topLeft,
                  child:Text("Welcome back!",style: TextStyle(color:Colors.brown,fontSize: 30,fontWeight: FontWeight.w600))),
            ),
            Form(
              key: _formKey,
              child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: TextFormField(
                     //key: _formKey,
                     controller: EmailController,
                     decoration: InputDecoration(
                       labelText: "Email",
                     ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    //key: _formKey,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment:Alignment.topRight,
                    child: TextButton(
                      onPressed: (){},
                      child: Text("Forget Password",style: TextStyle(color: Colors.brown),),
                    ),
                  ),
                ),
                Container(
                  height:MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width*0.93,
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pushReplacement(
                      MaterialPageRoute (
                        builder: (BuildContext context) =>locationScreen(),
                      ),
                    );},
                    child: Text('LogIn',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                      primary:Colors.brown,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80,10,40,10),
                  child: Row(
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.black12),),
                      TextButton(onPressed: (){}, child:Text("Register",style: TextStyle(color: Colors.brown),),)
                    ],
                  ),
                ),

              ],
            ))
          ],
        ),
      ),
    );
  }
}