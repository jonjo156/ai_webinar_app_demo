import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Can it Compost?',
                style: TextStyle(
                  fontSize: 48, // Increased H1 size for more prominence
                  fontWeight: FontWeight.bold,
                  // fontFamily: 'Montserrat', // Uncomment and specify your font if you have a custom one
                ),
              ),
              SizedBox(
                  height:
                      48), // Increased space between title and form for better visual separation
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 600), // Maximum width of 600 pixels
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity, // Adapts to the constraints
                  height: 48, // Fixed height
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your text',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your button logic here
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
