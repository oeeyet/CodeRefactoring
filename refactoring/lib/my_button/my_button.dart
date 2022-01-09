import 'package:flutter/material.dart';
import 'package:refactoring/login_app/login.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {required this.image,
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed});

  final Widget image; //image속성은 image.asset이 와야하므로widget타입으로 지정한다.
  final Widget text;
  final Color color;
  // button 모서리 값은 소수점까지 입력해야하므로 ! double형으로 입력
  final double radius;
  // Raisebutton의 onPressed타입은 voidCallback임!(참고로 callback은 간단히 버튼을 눌렀을 때
  //어떤 기능을 수행하기 위해 사용하는 코드, 즉 메서드라고 이해하면 된다. )
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    

    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        color: color,
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
