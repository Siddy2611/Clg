import 'package:flutter/material.dart';

class WeightSelectionScreen extends StatefulWidget {

  int currentStep;
  WeightSelectionScreen({required this.currentStep});

  @override
  _WeightSelectionScreenState createState() => _WeightSelectionScreenState();
}

class _WeightSelectionScreenState extends State<WeightSelectionScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.1);
  int _currentPage = 0;
  late List<String> weights;
  String selectedWeight = '';
  int currentStep = 1;
  bool isKgSelected = true;

  @override
  void initState() {
    super.initState();
    currentStep = widget.currentStep; // Initialize with the passed step
    weights = List.generate(200, (index) => (index + 30).toString()); // Generates weights from 30kg to 229kg
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
        selectedWeight = weights[_currentPage];
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  void toggleUnit(bool isKg) {
    setState(() {
      isKgSelected = isKg;
      if (!isKgSelected) {
        // Convert weights to pounds
        weights = List.generate(200, (index) => ((index + 30) * 2.20462).toStringAsFixed(1));
      } else {
        // Convert weights back to kg
        weights = List.generate(200, (index) => (index + 30).toString());
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
                  'Select Your Weight',
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
                'Your weight helps in determining your BMI and fitness needs.',
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
                        color: isKgSelected ? Color(0xFF145A32) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'kg',
                        style: TextStyle(
                          fontSize: 18,
                          color: isKgSelected ? Colors.white : Colors.white.withOpacity(0.5),
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
                        color: !isKgSelected ? Color(0xFF145A32) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'lb',
                        style: TextStyle(
                          fontSize: 18,
                          color: !isKgSelected ? Colors.white : Colors.white.withOpacity(0.5),
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
                    selectedWeight,
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
                          itemCount: weights.length,
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
                                      weights[index],
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
                            size: 28,
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
                      onTap:()
                      {
                        Navigator.pushNamed(context, '/Height',arguments: currentStep-1);
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
                      onPressed: (){ Navigator.pushNamed(context, '/goals');
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