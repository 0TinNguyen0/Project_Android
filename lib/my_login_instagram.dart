import 'package:flutter/material.dart';
import 'package:bai_hoc/my_instagram.dart';
class MyLoginInstagram extends StatelessWidget {
  MyLoginInstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Image(
                image: AssetImage('assets/images/logo_login_instagram.png'),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Số điện thoại, tên người dùng hoặc email",
                  hintStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 16
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Mật khẩu",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  suffixIcon: InkWell(
                    onTap: () {
                      // Đặt sự kiện khi nhấn vào biểu tượng mắt ở đây
                    },
                    child: Icon(
                      Icons.visibility,
                      color: Colors.white60,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            SizedBox(height: 25),
            SizedBox(
              width: 380,
              height: 40,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyInstagram()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.white12),
                    ),
                  ),
                  child: Text("Đăng nhập", style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Đặt về phía bên phải
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10), // Thêm margin bên phải 10
                  child: TextButton(
                    onPressed: () {
                      // Đặt sự kiện khi nhấn vào "Quên mật khẩu" ở đây
                    },
                    child: Text(
                      'Bạn quên mật khẩu ư?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bạn chưa có tài khoản ư? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                "Đăng ký",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
