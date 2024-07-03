import 'package:flutter/material.dart';

void main() {
  runApp(CompostCheckerApp());
}

class CompostCheckerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompostCheckerHomePage(),
    );
  }
}

class CompostCheckerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CompostChecker'),
        backgroundColor: Color(0xFF192841),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'How it works',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'FAQ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Pricing',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('Log in'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF506AD4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        color: Color(0xFF192841),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Color(0xFF192841),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Determine compostability of items easily!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Check if items are compostable with our simple tool.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Get started'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF506AD4),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF506AD4),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Color(0xFF0F1726),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(
                    title: 'Item compostability checker',
                    subtitle: 'Easy to use',
                    icon: Icons.check_circle,
                  ),
                  InfoCard(
                    title: 'Items checked for',
                    subtitle: 'Results',
                    icon: Icons.pie_chart,
                  ),
                  InfoCard(
                    title: 'Compostability analysis',
                    subtitle: 'Success',
                    icon: Icons.check,
                  ),
                  InfoCard(
                    title: 'Get composting advice',
                    subtitle: 'Try it now',
                    icon: Icons.arrow_upward,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(140, 20, 140, 20),
              color: Color(0xFF192841),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CompostChecker',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Help',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'FAQs',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Support Center',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'How to Compost',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Contact Support',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  InfoCard({required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0xFF2C3A4B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 40),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
