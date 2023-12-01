import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final vIcon = Icon(
  FontAwesomeIcons.chevronDown,
  color: Colors.black,
  size: 15,
);
final urlImagesALJ = [
  'assets/images/jennyhuynh_body.jpg',
  'assets/images/jennyhuynh_body1.jpg',
  'assets/images/jennyhuynh_body2.jpg',
  'assets/images/jennyhuynh_body4.jpg',
];
final urlImagesHina = [
  'assets/images/lisa_body.jpg',
  'assets/images/lisa_body1.jpg',
  'assets/images/lisa_body2.jpg',
  'assets/images/lisa_body3.jpg',
  'assets/images/lisa_body4.jpg',
];

class MyInstagram extends StatelessWidget {
  MyInstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EBEE),
      appBar: AppBar(
        backgroundColor: Color(0xFFE9EBEE),
        title: Row(
          children: <Widget>[
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            PopupMenuButton<String>(
              icon: vIcon,
              onSelected: (value) {
                if (value == 'follow') {
                  // Xử lý khi chọn "Đang theo dõi"
                } else if (value == 'favorite') {
                  // Xử lý khi chọn "Yêu thích"
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'follow',
                    child: ListTile(
                      title: Text(
                        'Đang theo dõi',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                      ), // Đặt biểu tượng bên phải
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'favorite',
                    child: ListTile(
                      title: Text(
                        'Yêu thích',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.star_border,
                        // IconInstagram.star_border,
                        color: Colors.black,
                      ), // Đặt biểu tượng bên phải
                    ),
                  ),
                ];
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              // Sử dụng Expanded để đẩy biểu tượng lên phía bên phải
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // Đặt căn chỉnh bên phải
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                        // SocialIconsFlutter.facebook,
                      // IconInstagram.heart,
                       color: Colors.black,
                       size: 35,
                    ),
                    onPressed: () {
                      // theo dõi.
                    },
                  ),
                  SizedBox(width: 10), // Khoảng cách 30px giữa biểu tượng
                  IconButton(
                    icon: Icon(
                       FontAwesomeIcons.facebookMessenger,
                       // IconInstagram.facebook_messenger,
                       color: Colors.black,
                       size: 30,
                    ),
                    onPressed: () {
                      // tin nhắn
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          // status
          Container(
            height: 120,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // ListTitle 1
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                    'assets/images/avatar.jpg'),
                              ),
                            ),
                          ),
                          Text("Tin của bạn"),
                        ],
                      ),
                    ),
                  ),
                  // ListTitle 2
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/jenny_huynh.jpg'),
                              ),
                            ),
                          ),
                          Text("jenny.huynh._"),
                        ],
                      ),
                    ),
                  ),
                  // ListTitle 3
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/tyquanglee.jpg'),
                              ),
                            ),
                          ),
                          Text("tyquanglee"),
                        ],
                      ),
                    ),
                  ),
                  // ListTitle 4
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                    'assets/images/thekinnci07.jpg'),
                              ),
                            ),
                          ),
                          Text("thekinnci07"),
                        ],
                      ),
                    ),
                  ),
                  // ListTitle 5
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/bngan_0309.jpg'),
                              ),
                            ),
                          ),
                          Text("bngan_0309"),
                        ],
                      ),
                    ),
                  ),
                  // ListTitle 6
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/ji_mun.jpg'),
                              ),
                            ),
                          ),
                          Text("ji_mun"),
                        ],
                      ),
                    ),
                  ),
                  // listTitle 7
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/kimnhi462.jpg'),
                              ),
                            ),
                          ),
                          Text("kimnhi462"),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      // Cách lề trái của mỗi ListTile
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.5, // Độ dày của đường viền
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                AssetImage('assets/images/jenlisa.jpg'),
                              ),
                            ),
                          ),
                          Text("jenlisa"),
                        ],
                      ),
                    ),
                  ),
                  //lítTitle 8
                ],
              ),
            ),
          ), // ListView status
          //News

          Container(
            height: 100,
            child: Expanded(
              // ListView news
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                        AssetImage('assets/images/jenny_huynh.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Thay đổi khoảng cách tùy ý
                    child: Text(
                      "jenny.huynh._",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            //Xử lý sự kiện.
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 500,
                //autoPlay: true,
                reverse: true,
                viewportFraction: 1,
                //pageSnapping: false,
                //enableInfiniteScroll: false,
                //enlargeCenterPage: true,
                //enlargeStrategy: CenterPageEnlargeStrategy.height,
                //autoPlayInterval: Duration(seconds: 3),
                //viewportFraction: 0.85,
              ),
              itemCount: urlImagesALJ.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImagesALJ[index];
                return buildImage(urlImage, index);
              },
            ),
          ),

      Row(
        // Đặt căn chỉnh bên phải
        children: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              // SocialIconsFlutter.facebook,
              // IconInstagram.heart,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {
              // theo dõi.
            },
          ),
          SizedBox(width: 10),

          IconButton(
            icon: Icon(
              FontAwesomeIcons.comment,
              // SocialIconsFlutter.facebook,
              // IconInstagram.heart,
              color: Colors.black,
              size: 33,
            ),
            onPressed: () {
              // theo dõi.
            },
          ),

          IconButton(
            icon: Icon(
              Icons.share_outlined,
              // SocialIconsFlutter.facebook,
              // IconInstagram.heart,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {
              // theo dõi.
            },
          ),
          SizedBox(width: 190),

          IconButton(
            icon: Icon(
              Icons.bookmark_border_rounded,
              // SocialIconsFlutter.facebook,
              // IconInstagram.heart,
              color: Colors.black,
              size: 35,
            ),
            onPressed: () {
              // theo dõi.
            },
          ),
        ]
          ),

          Container(
            height: 100,
            child: Expanded(
              // ListView news
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 1.5,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                        AssetImage('assets/images/jenlisa.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Thay đổi khoảng cách tùy ý
                    child: Text(
                      "jenlisa",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            //Xử lý sự kiện.
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 500,
                //autoPlay: true,
                reverse: true,
                viewportFraction: 1,
                //pageSnapping: false,
                //enableInfiniteScroll: false,
                //enlargeCenterPage: true,
                //enlargeStrategy: CenterPageEnlargeStrategy.height,
                //autoPlayInterval: Duration(seconds: 3),
                //viewportFraction: 0.85,
              ),
              itemCount: urlImagesHina.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImagesHina[index];
                return buildImage(urlImage, index);
              },
            ),
          ),

          Row(
            // Đặt căn chỉnh bên phải
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 10),

                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.comment,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.black,
                    size: 33,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),

                IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 190),

                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.black,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
              ]
          ),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // Ẩn label khi được chọn
        showUnselectedLabels: false, // Ẩn label khi không được chọn
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(
                Icons.add_circle_outline,
              // IconInstagram.diff_added,
               color: Colors.black,
               size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Videos",
            icon: Icon(
              Icons.video_collection,
              color: Colors.black,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/avatar.jpg'),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    color: Colors.grey,
    child: Image.asset(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}
