import 'package:flutter/material.dart';

class HeightSelectionScreen extends StatefulWidget {

  final int currentStep;
  HeightSelectionScreen({required this.currentStep});

  @override
  _HeightSelectionScreenState createState() => _HeightSelectionScreenState();
}

class _HeightSelectionScreenState extends State<HeightSelectionScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.1);
  int _currentPage = 0;
  late List<String> heights;
  String selectedHeight = '';
  int currentStep = 1;
  bool isCmSelected = true;

  @override
  void initState() {
    super.initState();
    currentStep = widget.currentStep; // Initialize with the passed step
    heights = List.generate(100, (index) => (index + 100).toString()); // Generates heights from 100cm to 199cm
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
        selectedHeight = heights[_currentPage];
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void toggleUnit(bool isCm) {
    setState(() {
      isCmSelected = isCm;
      if (!isCmSelected) {
        // Convert heights to feet
        heights = List.generate(40, (index) => (4.0 + index * 0.1).toStringAsFixed(1));
      } else {
        // Convert heights back to cm
        heights = List.generate(100, (index) => (index + 100).toString());
      }
      _pageController.jumpToPage(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.black],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 20,
              right: 20,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FractionallySizedBox(
                  widthFactor: currentStep / 5,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF145A32),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Select Your Height',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Text(
                'Your height helps in determining your BMI and fitness needs.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 220,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => toggleUnit(true),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: isCmSelected ? Color(0xFF145A32) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 18,
                          color: isCmSelected ? Colors.white : Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => toggleUnit(false),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: !isCmSelected ? Color(0xFF145A32) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'ft',
                        style: TextStyle(
                          fontSize: 18,
                          color: !isCmSelected ? Colors.white : Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 360,
              left: 15,
              right: 15,
              child: Column(
                children: [
                  Text(
                    selectedHeight,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100, // Reduced height of the slider container
                    decoration: BoxDecoration(
                      color: Color(0xFF145A32),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: heights.length,
                          itemBuilder: (context, index) {
                            bool isBigLine = index % 5 == 0;
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: isBigLine ? 20 : 10, // Adjusted line height
                                    width: 2,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(height: 5),
                                  if (isBigLine) // Only show every 5th number
                                    Text(
                                      heights[index],
                                      style: TextStyle(
                                        fontSize: _currentPage == index ? 18 : 14, // Adjusted font size
                                        color: _currentPage == index
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 2 - 28,
                          top: 0,
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:() {
              Navigator.pushNamed(context, '/Age',arguments: currentStep-1);
              },
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed:() {
                        Navigator.pushNamed(context, '/Weight',arguments: currentStep+1);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF145A32),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}