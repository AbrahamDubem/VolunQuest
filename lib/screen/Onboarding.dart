import 'package:czar_test_1/components/appbutton.dart';
import 'package:czar_test_1/screen/SignUpScreen.dart';
import 'package:czar_test_1/screen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/children smile.jpg'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 550, 10, 10),
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Discover ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.40,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              'Meaningful Opportunities',
                              style: TextStyle(
                                color: Color(0xFF228B22),
                                fontSize: 20.40,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w700,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              ' with',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.40,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'VolunQuest',
                              style: TextStyle(
                                color: Color(0xFF228B22),
                                fontSize: 20.40,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w700,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              'Find local volunteering events that match your \ninterests and schedule.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // SmoothPageIndicator(
                        //   controller: controller,
                        //   count: 2,
                        //   effect: WormEffect(
                        //     spacing: 14,
                        //     dotColor: Colors.white,
                        //     activeDotColor: Colors.teal,
                        //   ),
                        //   onDotClicked: (index) => controller.animateToPage(
                        //     index,
                        //     duration: Duration(milliseconds: 500),
                        //     curve: Curves.easeIn,
                        //   ),
                        // ),
                        SizedBox(
                          height: 12,
                        ),
                        AppButton(
                          text: 'Get Started',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/beach.jpg'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 550, 10, 10),
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Discover ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.40,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              'Meaningful Opportunities',
                              style: TextStyle(
                                color: Color(0xFF228B22),
                                fontSize: 20.40,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w700,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              'with',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.40,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'VolunQuest',
                              style: TextStyle(
                                color: Color(0xFF228B22),
                                fontSize: 20.40,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w700,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Find local volunteering events that match your \ninterests and schedule.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Aeonik',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.5,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // SmoothPageIndicator(
                        //   controller: controller,
                        //   count: 2,
                        //   effect: WormEffect(
                        //     spacing: 14,
                        //     dotColor: Colors.white,
                        //     activeDotColor: Colors.teal,
                        //   ),
                        //   onDotClicked: (index) => controller.animateToPage(
                        //     index,
                        //     duration: Duration(milliseconds: 500),
                        //     curve: Curves.easeIn,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 12,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: const AppButton(
                              text: 'Get Started',
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
