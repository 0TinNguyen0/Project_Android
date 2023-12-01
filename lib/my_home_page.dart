
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<String> popMenu =[
    "Login", "Res", "Logout" ,"Setting" ,"About"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text (
          "Nhìn cái chóa gì",
          style: TextStyle (
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return popMenu.map((e){
                return PopupMenuItem(child: Text(e));
              }).toList();
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.blue,
                ]
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ), // bo tròn navbar
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Dân Báo Đời",
              style: TextStyle(
                fontFamily: "Young",
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Chọc Chó Mãi Đỉnh",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Mô Phật",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.blue,
                    ]
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 40,
                    ),
                    onPressed: (){
                      print("Đừng click nữa mà");
                      var snackBar = new SnackBar(
                          content: Text("Đã bảo đừng click nữa")
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Icon(
                    Icons.access_alarm,
                    color: Colors.red,
                    size: 40,
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label:"Home" ,
              icon: Icon(
                  Icons.home
              )
          ),

          BottomNavigationBarItem(
              label:"Setting",
              icon: Icon(
                  Icons.settings
              )
          ),

          BottomNavigationBarItem(
              label:"Logout",
              icon: Icon(
                  Icons.logout
              )
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.cyan,
        shape: CircleBorder(),
        onPressed: (){

        },
        child: Icon(
            Icons.facebook
        ),
      ),
      drawer: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.cyan
            ),
            child: Text("Hello"),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },

            title: Text("Hello"),

          ),
        ],
      ),
    );
  }
}