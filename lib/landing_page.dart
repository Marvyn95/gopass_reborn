import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landing_page_background.jpg'),
            fit: BoxFit.cover,
            opacity: 1.0,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 20,
              child: TextButton(
                onPressed: () => {},
                child: const Text(
                  'GoPass',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hey,\nready for\nsome vibe\ntonight?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 70),
                    const Text(
                      'Let us find you an event\nyou will love',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 180,
              left: 40,
              right: 250,
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 5,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 100,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Expanded(
                          child: Container(
                            height: 2,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 5,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/home_page'),
                  icon: const Icon(Icons.celebration, color: Colors.white),
                  label: const Text('Find pending events'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}