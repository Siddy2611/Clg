import 'package:flutter/material.dart';

class AgeSelectionScreen extends StatefulWidget {
  @override
  _AgeSelectionScreenState createState() => _AgeSelectionScreenState();
}

class _AgeSelectionScreenState extends State<AgeSelectionScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.3);
  int _currentPage = 0;
  late List<String> ages;
  String selectedAge = '';
  int currentStep = 2; // Track the current step (1 out of 4)

  @override
  void initState() {
    super.initState();
    ages = List.generate(50, (index) => (index + 18).toString()); // Generates ages from 18 to 67
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
        selectedAge = ages[_currentPage];
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.black], // Solid black background
          ),
        ),
        child: Stack(
          children: [
            // Progress Bar (Positioned at the top)
            Positioned(
              top: 60, // Y-axis position
              left: 20, // X-axis position
              right: 20, // X-axis position
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3), // Background of the progress bar
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FractionallySizedBox(
                  widthFactor: currentStep / 5, // Fill based on current step (1 out of 4)
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF145A32), // Filled part of the progress bar
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),

            // Selected Age (Positioned at the top center)
            Positioned(
              top: 265, // Y-axis position
              left: 0, // X-axis position
              right: 0, // X-axis position
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$selectedAge',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white, // White color for selected age
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // "How Old Are You?" Text (Positioned below the selected age)
            Positioned(
              top: 100, // Y-axis position
              left: 0, // X-axis position
              right: 0, // X-axis position
              child: Center(
                child: Text(
                  'How Old Are You?',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white, // White color for text
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Description Text (Positioned below the question)
            Positioned(
              top: 150, // Y-axis position
              left: 20, // X-axis position
              right: 20, // X-axis position
              child: Text(
                'The age affects directly the genetics and training you need.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // White color for text
                ),
                textAlign: TextAlign.center,
              ),
            ),

// Age Slider (Positioned in the middle)
            Positioned(
              top: 400, // Y-axis position
              left: 15, // X-axis position
              right: 15, // X-axis position
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFF145A32), // Green background for slider
                  borderRadius: BorderRadius.circular(35), // Rounded corners
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 28,
                      top: 0,
                      child: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    PageView.builder(
                      controller: _pageController,
                      itemCount: ages.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Text(
                            ages[index],
                            style: TextStyle(
                              fontSize: _currentPage == index ? 50 : 30, // Larger font for selected age
                              color: _currentPage == index ? Colors.white : Colors.white.withOpacity(0.5), // Highlight selected age
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),



            Positioned(
              bottom: 50, // Y-axis position
              left: 20, // X-axis position
              right: 20, // X-axis position
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Previous (Clickable Text)
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Gender',arguments: currentStep-1);
                      },
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.7), // Dull white text
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Continue (Button)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Height',arguments: currentStep+1);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF145A32), // Green background for button
                        foregroundColor: Colors.white, // White text for button
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