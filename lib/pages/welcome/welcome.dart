import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/title.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Center(
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
        SizedBox(
          height: size.height * 0.2,
        ),
        Container(
          width: size.width * 0.80,
          child: FlatButton(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        CustomButton(size: size)
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: size.width * 0.80,
        child: OutlineButton(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 30,
          ),
          shape: StadiumBorder(),
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
