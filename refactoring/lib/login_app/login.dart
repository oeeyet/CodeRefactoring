import 'package:flutter/material.dart';
import 'package:refactoring/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Padding _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          // mybutton widget을 불러와서 언제라도 간단하게 버튼을 만들 수 있다!
          MyButton(image: Image.asset('images/glogo.png'), text: Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                    color: Colors.white, 
                    radius: 4.0, 
                    onPressed: (){},
                    ),
                    SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/flogo.png'),
                  Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity( // 투명도를 설정하는 위젯
                    opacity: 0.0,// 이미지 투명도롤 '0'으로 만듬!(위에서 spaceEvenly를 사용해서 간격 조절을 했기에!)
                    child: Image.asset('images/glogo.png'),
                  ),
                ],
              ),
              color: Color(0xFF334D92),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              color: Colors.green,
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}