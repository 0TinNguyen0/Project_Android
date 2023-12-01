import 'dart:ui';

import 'package:flutter/material.dart';

class MyClassRoom extends StatelessWidget {
  MyClassRoom({Key? key}) : super(key: key);
  //const MyClassRoom({super.key});
  List<String> popMenu =[
    "Tham gia lớp học", "Tạo lớp học"
  ];
  List<String> popMenu1 =[
    "Hủy đăng ký"
  ];
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Divider(
            thickness: 2,
            height: 0,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text (
          "Google Lớp học",
          style: TextStyle (
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),

        // centerTitle: true, //Căng text ở giũa
        actions: [
          // click vào avatar: đăng nhập hoặc thêm đổi tài khoản
          GestureDetector(
            onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  insetPadding: EdgeInsets.only(left: 10, right: 10, bottom: 220),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close)
                            ),
                            SizedBox(width: 70),
                            Image(
                              image: AssetImage('assets/images/google.jpg'),
                              height: 70,
                              width: 90,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),

                        Container(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fdad2-1.fna.fbcdn.net/v/t1.6435-9/117389764_307295900383504_266209691901358824_n.jpg?_nc_cat='
                                      '108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q0YcBV7QZbAAX_34JoS&_nc_ht=scontent.fdad2-1.fna&oh=00_AfBGchULnZd81wb0xluq7ULyaANKrJK_kOgYh9K8w_McYg&oe=653E531E'
                              ),
                              minRadius: 20,
                              maxRadius: 20,
                            ),
                            //leading: Icon(Icons.book),
                            title: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trung Nguyễn Quốc',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '20t1080053@husc.edu.vn',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            minLeadingWidth: 0.5,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                          child: Text('Tài khoảng Google'),
                        ),

                        Divider(
                          color: Colors.black26,
                          thickness: 0.7,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://img.thuthuat123.com/uploads/2019/06/11/anh-nen-meo-de-thuong_093846627.jpg'
                            ),
                            minRadius: 20,
                            maxRadius: 20,
                          ),
                          //leading: Icon(Icons.book),
                          title: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Trung Nguyễn',
                                  style: TextStyle(
                                      fontSize: 17
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'trunga92loctri@gmail.com',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          minLeadingWidth: 0.5,
                        ),
                        ListTile(
                          leading: Icon(Icons.person_add_alt_1),
                          title: Text('Thêm một tài khoản khác'),
                          minLeadingWidth: 1,
                        ),
                        ListTile(
                          leading: Icon(Icons.manage_accounts),
                          title: Text('Quản lý các tài khoản trên thiết bị này'),
                          minLeadingWidth: 1,
                        ),

                        Divider(
                          color: Colors.black26,
                          thickness: 0.3,
                        ),
                        Row(
                          children: [
                            Text('Chính sách quyền riêng tư',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              size: 5,
                            ),
                            Spacer(),
                            Text('Điều khoản dịch vụ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10),

                      ],
                    ),
                  ),
                )
            ),
            // avatar
            child: Container(
                width: 40,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fdad2-1.fna.fbcdn.net/v/t1.6435-9/117389764_307295900383504_266209691901358824_n.jpg?_nc_cat='
                          '108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=q0YcBV7QZbAAX_34JoS&_nc_ht=scontent.fdad2-1.fna&oh=00_AfBGchULnZd81wb0xluq7ULyaANKrJK_kOgYh9K8w_McYg&oe=653E531E'
                  ),
                )
            ),
          ),
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
                  // Colors.green,
                  // Colors.blue,
                ]
            ),
            // borderRadius: BorderRadius.only(
            //   bottomLeft: Radius.circular(30),
            //   bottomRight: Radius.circular(30),
          ), // bo tròn navbar
        ),
      ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueAccent,
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                )
            ),
            builder: (BuildContext context) {
              return Container(
                height: 110,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: GestureDetector(
                            child: Text(
                                "Tạo lớp học",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                )
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            }
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: GestureDetector(
                          child: Text(
                              "Tham gia lớp học",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              )
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ]
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),

      drawer: Drawer(
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 1.2,
                        )
                    )
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/google.jpg'),
                      height: 60,
                      width: 70,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                    Text(
                      " Lớp học",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                children: [
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Lớp học",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.home_filled),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text("Lịch"),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.calendar_today),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Row(
                      children: [
                        Text("Thông báo"),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.notifications_none),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                  ),
                  ListTile (
                    title: Text(
                      "Đã đăng ký",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text("Việc cần làm"),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.event_note_outlined),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Lập trình web - Nhóm 1'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2023-2024.1.TIN4493.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://th.bing.com/th/id/OIP.rSsH6djtxIUt6EsLxowgbAHaHa?pid=ImgDet&rs=1'
                      // ),
                      backgroundColor: Colors.blue,
                      child: Text("L"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Thực tập viết niên luận - Nhó...'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.2.TIN3142.019',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://pic2.zhimg.com/v2-0513fa242f384f01ffe09c2ddef63944_r.jpg'
                      // ),
                      backgroundColor: Colors.black38,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Trí tuệ nhân tạo - Nhóm 2'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.1.TIN3113.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://toigingiuvedep.vn/wp-content/uploads/2021/04/hinh-anh-nen-con-meo-cute.jpg'
                      // ),
                      backgroundColor: Colors.green,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Lập trình web - Nhóm 1'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2023-2024.1.TIN4493.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://th.bing.com/th/id/OIP.rSsH6djtxIUt6EsLxowgbAHaHa?pid=ImgDet&rs=1'
                      // ),
                      backgroundColor: Colors.blue,
                      child: Text("L"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Thực tập viết niên luận - Nhó...'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.2.TIN3142.019',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://pic2.zhimg.com/v2-0513fa242f384f01ffe09c2ddef63944_r.jpg'
                      // ),
                      backgroundColor: Colors.black38,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Trí tuệ nhân tạo - Nhóm 2'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.1.TIN3113.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://toigingiuvedep.vn/wp-content/uploads/2021/04/hinh-anh-nen-con-meo-cute.jpg'
                      // ),
                      backgroundColor: Colors.green,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Lập trình web - Nhóm 1'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2023-2024.1.TIN4493.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://th.bing.com/th/id/OIP.rSsH6djtxIUt6EsLxowgbAHaHa?pid=ImgDet&rs=1'
                      // ),
                      backgroundColor: Colors.blue,
                      child: Text("L"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Thực tập viết niên luận - Nhó...'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.2.TIN3142.019',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://pic2.zhimg.com/v2-0513fa242f384f01ffe09c2ddef63944_r.jpg'
                      // ),
                      backgroundColor: Colors.black38,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Trí tuệ nhân tạo - Nhóm 2'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.1.TIN3113.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://toigingiuvedep.vn/wp-content/uploads/2021/04/hinh-anh-nen-con-meo-cute.jpg'
                      // ),
                      backgroundColor: Colors.green,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Lập trình web - Nhóm 1'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2023-2024.1.TIN4493.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://th.bing.com/th/id/OIP.rSsH6djtxIUt6EsLxowgbAHaHa?pid=ImgDet&rs=1'
                      // ),
                      backgroundColor: Colors.blue,
                      child: Text("L"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Thực tập viết niên luận - Nhó...'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.2.TIN3142.019',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://pic2.zhimg.com/v2-0513fa242f384f01ffe09c2ddef63944_r.jpg'
                      // ),
                      backgroundColor: Colors.black38,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Trí tuệ nhân tạo - Nhóm 2'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.1.TIN3113.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://toigingiuvedep.vn/wp-content/uploads/2021/04/hinh-anh-nen-con-meo-cute.jpg'
                      // ),
                      backgroundColor: Colors.green,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Lập trình web - Nhóm 1'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2023-2024.1.TIN4493.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://th.bing.com/th/id/OIP.rSsH6djtxIUt6EsLxowgbAHaHa?pid=ImgDet&rs=1'
                      // ),
                      backgroundColor: Colors.blue,
                      child: Text("L"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Thực tập viết niên luận - Nhó...'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.2.TIN3142.019',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://pic2.zhimg.com/v2-0513fa242f384f01ffe09c2ddef63944_r.jpg'
                      // ),
                      backgroundColor: Colors.black38,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Trí tuệ nhân tạo - Nhóm 2'),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2022-2023.1.TIN3113.001',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    minLeadingWidth: 1,
                    leading: CircleAvatar(
                      // backgroundImage: NetworkImage(
                      //     'https://toigingiuvedep.vn/wp-content/uploads/2021/04/hinh-anh-nen-con-meo-cute.jpg'
                      // ),
                      backgroundColor: Colors.green,
                      child: Text("T"),
                      minRadius: 15,
                      maxRadius: 15,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),

                  Divider(
                    color: Colors.black,
                    thickness: 0.2,
                  ),

                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Tệp ngoại tuyến",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.offline_pin_outlined),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Lớp học đã lưu trữ",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.archive_outlined),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Thư mục lớp học",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.folder_open),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Cài đặt",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.settings_outlined),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile (
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    title: Text(
                      "Lớp học",
                      style: TextStyle(
                      ),
                    ),
                    minLeadingWidth: 1,
                    leading: GestureDetector(
                      child: Icon(Icons.help_outline),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Row(
                      children: [
                        Text(
                          "Tuần này",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Xem danh sách việc cần làm",
                            style: TextStyle (
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              height: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hiện không có bài tập nào",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        height: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(

                // color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    width: 1,
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Lập trình web - Nhóm 1",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2023-2024.1.TIN4493.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Thực tập viết niên luận ...",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.2.TIN3142.019",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 1,
                    color: Colors.black45
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trí tuệ nhân tạo - Nhóm 2",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return popMenu1.map((e){
                            return PopupMenuItem(child: Text(e));
                          }).toList();
                        },
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "2022-2023.1.TIN3113.001",
                      style: TextStyle (
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lương Trần Thanh",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        height: 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

