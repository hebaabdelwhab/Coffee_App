import 'package:coffee_app/Menu.dart';
import 'package:coffee_app/preference.dart';
import 'package:flutter/material.dart';
class bottomScreen extends StatefulWidget {
  const bottomScreen({Key? key}) : super(key: key);
  @override
  _bottomScreenState createState() => _bottomScreenState();
}
class _bottomScreenState extends State<bottomScreen> {
    static List<Widget> _pages = <Widget>[
      MenuScreen(),
      PreferenceScreen(),
      Icon(
        Icons.chat,
        size: 150,
        color: Colors.brown,
      ),
      Icon(
        Icons.account_circle,
        size: 150,
        color:Colors.brown,
      ),
    ];
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.brown,),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text("Menu", style: TextStyle(color: Colors.brown),),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color:Colors.brown,),
              label: "home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined,color:Colors.brown,),
              label: "location"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room_preferences,color:Colors.brown,),
              label: "room"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color:Colors.brown,),
              label: "Account"
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      );
    }
}
