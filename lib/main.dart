import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/gym2.jpg"),
              fit: BoxFit.cover,
            )
            ),
            child: Container(  
              decoration: BoxDecoration( 
                gradient: LinearGradient(
                  colors:[
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.3),
                  ] )
              ),
            ),
          )
        ],
      ),
    );
  }
}
