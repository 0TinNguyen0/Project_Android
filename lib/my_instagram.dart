import 'package:bai_hoc/my_instagram_reels.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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

final urlImagesAnime = [
  'assets/images/Re_Zero.jpg',
  'assets/images/YourName.jpg',
  'assets/images/Sao.jpg',
  'assets/images/Sakimichan.jpg',
  'assets/images/NanatsuNoTaizai.jpg',
];

int _currentIndex = 0;

final List<Widget> _pages = [
  MyInstagram(),
  MyInstagramReels(),
];

class MyInstagram extends StatelessWidget {
  MyInstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Row(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo_instagram1.png'),
              height: 80,
              width: 110 ,
              //fit: BoxFit.cover,
              //alignment: Alignment.center,
            ),
            PopupMenuButton<String>(
              icon: Icon(
                FontAwesomeIcons.chevronDown , // hoặc bất kỳ biểu tượng nào bạn muốn sử dụng
                color: Colors.white,
                size: 12,
              ),
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
                       color: Colors.white,
                       size: 30,
                    ),
                    onPressed: () {
                      // theo dõi.
                    },
                  ),
                  //SizedBox(width: 0.1), // Khoảng cách 30px giữa biểu tượng
                  IconButton(
                    icon: Icon(
                       FontAwesomeIcons.facebookMessenger,
                       // IconInstagram.facebook_messenger,
                       color: Colors.white,
                       size: 26,
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
                          Text("Tin của bạn",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("jenny.huynh._",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("tyquanglee",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("thekinnci07",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("bngan_0309",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("ji_mun",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("kimnhi462",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
                          Text("jenlisa",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
          Divider( // Thêm đường kẻ ngang ở đây
            color: Colors.white,
            thickness: 0.2,
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
                        color: Colors.white,
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
                            color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
                    size: 33,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 10),

                IconButton(
                  icon: Icon(
                    Icons.send,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 180),

                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
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
                        color: Colors.white,
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
                            color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
                    size: 33,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 10),

                IconButton(
                  icon: Icon(
                    Icons.send,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 180),

                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
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
                        AssetImage('assets/images/thetime.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Thay đổi khoảng cách tùy ý
                    child: Text(
                      "thetime",
                      style: TextStyle(
                        color: Colors.white,
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
                            color: Colors.white,
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
              itemCount: urlImagesAnime.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImagesAnime[index];
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
                    color: Colors.white,
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
                    color: Colors.white,
                    size: 33,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 10),

                IconButton(
                  icon: Icon(
                    Icons.send,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    // theo dõi.
                  },
                ),
                SizedBox(width: 180),

                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    // SocialIconsFlutter.facebook,
                    // IconInstagram.heart,
                    color: Colors.white,
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


    //body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false, // Ẩn label khi được chọn
        showUnselectedLabels: false, // Ẩn label khi không được chọn
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(
                Icons.add_circle_outline,
              // IconInstagram.diff_added,
               color: Colors.white,
               size: 30,
            ),
          ),

          BottomNavigationBarItem(
            label: "Videos",
            icon: Icon(
              Icons.video_collection,
              color: Colors.white,
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

  void setState(Null Function() param0) {}
}

