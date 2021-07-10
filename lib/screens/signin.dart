import 'package:flutter/material.dart';

class OurSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 216, 189, 1),
      body: Column(
        children: <Widget>[
          SignInLogo(),
          SignInForm(),
          SignInSocialMedia(),
        ],
      ),
    );
  }
}

class SignInLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Image.asset(
              'assets/images/signinlogo.png',
              width: 300.0,
              height: 300.0,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        right: 50.0,
        bottom: 30.0,
        left: 50.0,
      ),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: 60,
            width: double.infinity,
            //margin: EdgeInsets.all(60.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(45, 62, 80, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            child: Text(
              'Or sign up',
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromRGBO(45, 62, 80, 1),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SignInSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        bottom: 70.0,
        right: 50.0,
        left: 50.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/twitter_icon.png'),
                  size: 41.0,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/facebook_icon.png'),
                  size: 41.0,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/instagram_icon.png'),
                  size: 41.0,
                  color: Color.fromRGBO(45, 62, 80, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
