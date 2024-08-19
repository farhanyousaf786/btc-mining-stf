import 'package:flutter/material.dart';
import '../navigation_page/navigation_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _onNextPressed() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Navigate to the main page of your app after the last slide
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigationPage()),
      );
    }
  }

  List<Widget> _buildPageIndicator() {
    return List<Widget>.generate(3, (int index) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        height: 8.0,
        width: _currentPage == index ? 24.0 : 8.0,
        decoration: BoxDecoration(
          color: _currentPage == index ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: <Widget>[
              _buildPage(
                title: "Welcome to BTC Mining",
                description: "Your gateway to easy and secure Bitcoin mining. Start earning today.",
                imagePath: "assets/images/btc-logo.png",
              ),
              _buildPage(
                title: "Mine BTC Easily",
                description: "With our optimized algorithms, you can mine Bitcoin faster and with ease.",
                imagePath: "assets/images/btc-logo.png",
              ),
              _buildPage(
                title: "Track Your Earnings",
                description: "Monitor your BTC earnings in real-time and manage your wallet effortlessly.",
                imagePath: "assets/images/btc-logo.png",
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _onNextPressed,
                  child: Text(_currentPage == 2 ? "Get Started" : "Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage({required String title, required String description, required String imagePath}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath, height: 250),  // Adjusted image height to be smaller
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
