
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class MyCinema extends StatelessWidget {
  MyCinema({Key? key}) : super(key: key);

  int activeIndex = 0;
  final urlImages = [
    'assets/images/OshinoShinobu.jpg',
    'assets/images/Re_Zero.jpg',
    'assets/images/YourName.jpg',
    'assets/images/Shark.jpg',
    'assets/images/thetime.jpg',
    'assets/images/Sao.jpg',
    'assets/images/NanatsuNoTaizai.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/arrietty.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              'Cinemal',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(width: 190), // Khoảng cách giữa tiêu đề và thanh tìm kiếm
            // Expanded(
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Nhập từ khoá tìm kiếm',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(100),
            //         borderSide: BorderSide(
            //           color: Colors.white,
            //           width: 1000,
            //         ),
            //       ),
            //     ),
            //     onSubmitted: (value) {
            //
            //     },
            //   ),
            // ),
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 40,
              onPressed: () {
                // Xử lý tìm kiếm ở đây
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: 0.9,
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        width: double.infinity,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
