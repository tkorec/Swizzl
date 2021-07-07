import 'package:flutter/material.dart';

class UploadOnboarding extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        contents[i].image,
                        width: 300.0,
                        height: 300.0,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context, currentIndex),
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.all(60.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Create package",
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
        ],
      ),
    );
  }
}

class UnboardingContent {
  var image;
  var title;

  UnboardingContent({this.title, this.image});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      title: 'Drop off or pick up \n clothing package',
      image: 'assets/images/uploadonboarding.png'),
  UnboardingContent(
      title: 'Upload your unwanted \n clothing',
      image: 'assets/images/uploadonboarding.png'),
];

Container buildDot(int index, BuildContext context, int currentIndex) {
  return Container(
    height: 10,
    width: 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: currentIndex == index ? Color.fromRGBO(196, 196, 196, 1) :Color.fromRGBO(68, 68, 68, 1),
    ),
  );
}
