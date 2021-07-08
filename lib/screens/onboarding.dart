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
            // Onboarding cards are displayed here
            child: PageView.builder(
              itemCount: contents.length,
              onPageChanged: (int index) {
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
          // Onboarding cards' navigators are stored here
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context, currentIndex),
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          // Create Package button is included here
          CreatePackageButton(),
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

// List of onboarding cards' content including images and titles
List<UnboardingContent> contents = [
  UnboardingContent(
      title: 'Drop off or pick up \n clothing package',
      image: 'assets/images/uploadonboarding.png'),
  UnboardingContent(
      title: 'Upload your unwanted \n clothing',
      image: 'assets/images/uploadonboarding.png'),
  UnboardingContent(
    title: 'Redeem points in \n exchange for discounts',
    image: 'assets/images/uploadonboarding.png')
];

// This part of code creates onboarding cards navigators and changes its status
// Active card's navigator point has another color than the rest of points
Container buildDot(int index, BuildContext context, int currentIndex) {
  return Container(
    height: 10,
    width: 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: currentIndex == index
          ? Color.fromRGBO(68, 68, 68, 1)
          : Color.fromRGBO(196, 196, 196, 1),
    ),
  );
}

// Class of "Create package" button
class CreatePackageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
