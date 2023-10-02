import 'package:flutter/material.dart';
import 'package:travel_app/pages/widget_tree.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.bottomCenter,
            radius: 1,
            colors: [
              Color(0xff7DACF8),
              Color(0xffffffff),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LET\'S',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    'EXPLORE',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'THE WORLD',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'In dolore do culpa pariatur non aliquip Lorem.',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    'In dolore do culpa pariatur non aliquip Lorem est aliqua.',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    'In dolore do culpa pariatur non.',
                    style: TextStyle(
                      color: Color(0xff425884),
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff7DACF8),
                          Color(0xff8BD8F9),
                        ],
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const WidgetTree(),
                            ),
                          );
                        },
                        child: const Text(
                          "ENTER",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Image(
                      image: AssetImage('assets/images/onboard_main.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
