import 'package:day9app/login.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff8ED6FF), Color(0xffEAF8FF), Colors.white],
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // Cloud 1
              Positioned(
                top: 50,
                left: 25,
                child: Container(
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

              // Cloud 2
              Positioned(
                top: 110,
                right: 30,
                child: Container(
                  width: 70,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                
                      const SizedBox(height: 20),
                
                      const Text(
                        "Track Your Bus",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff155EEF),
                        ),
                      ),
                
                      const Text(
                        "With Ease",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                
                      const SizedBox(height: 15),
                
                      const Text(
                        "Stay updated with your college bus\nin real time and never miss your ride.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                
                      const SizedBox(height: 25,),
                
                      // Bus Illustration
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Blue Circle
                          Container(
                            height: 280,
                            width: 280,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.withOpacity(.08),
                            ),
                          ),
                
                          // Inner Circle
                          Container(
                            height: 220,
                            width: 220,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.withOpacity(.15),
                            ),
                          ),
                
                          // GPS Pin Left
                          const Positioned(
                            left: 18,
                            top: 90,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                
                          // GPS Pin Right
                          const Positioned(
                            right: 20,
                            top: 30,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                
                          // Bus Image
                          Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/049/955/583/small/an-orange-bus-is-shown-on-a-black-background-png.png",
                            height: 240,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                
                      const SizedBox(height: 35),
                
                      // Green Ground
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffD8F5C4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                          ),
                        ),
                      ),
                
                      const SizedBox(height: 25),
                      // Glass Card
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.08),
                              blurRadius: 18,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                
                        child: Column(
                          children: [
                            // Page Indicator
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 30,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                
                                const SizedBox(width: 6),
                
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                
                                const SizedBox(width: 6),
                
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                
                            const SizedBox(height: 25),
                
                            SizedBox(
                              width: double.infinity,
                              height: 58,
                
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff1565C0),
                
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                                  // Navigation will be added later
                                },
                
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                
                                  children: [
                                    Text(
                                      "Get Started",
                
                                      style: TextStyle(
                                        fontSize: 18,
                
                                        fontWeight: FontWeight.bold,
                
                                        color: Colors.white,
                                      ),
                                    ),
                
                                    SizedBox(width: 10),
                
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
