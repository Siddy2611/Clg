import 'package:flutter/material.dart';

class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? selectedGender;
  int currentStep = 1;

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
              top: 60,
              left: 20,
              right: 20,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3), // Background of progress bar
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FractionallySizedBox(
                  widthFactor: currentStep / 5, // Fill based on step 1/4
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF145A32), // Progress bar color
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),

            // Title
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'How do you identify?',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Description
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Text(
                'To give you a better experience we need to know your gender.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Gender Selection Buttons
            Positioned(
              top: 280,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  _buildGenderButton('Male', Icons.male),
                  SizedBox(height: 20),
                  _buildGenderButton('Female', Icons.female),
                  SizedBox(height: 20),
                  _buildGenderButton('Prefer Not to disclose', Icons.person),
                ],
              ),
            ),

            // Previous and Continue Buttons
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Previous Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Go back to the previous screen
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

                  // Continue Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Age',arguments: currentStep+1);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF145A32),
                      foregroundColor: Colors.white,
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
          ],
        ),
      ),
    );
  }

  Widget _buildGenderButton(String gender, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: selectedGender == gender ? Color(0xFF145A32) : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: selectedGender == gender
                ? Color(0xFF145A32)
                : Colors.white.withOpacity(0.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: selectedGender == gender
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              size: 30,
            ),
            SizedBox(width: 15), // Space between icon and text
            Text(
              gender,
              style: TextStyle(
                fontSize: 18,
                color: selectedGender == gender
                    ? Colors.white
                    : Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
