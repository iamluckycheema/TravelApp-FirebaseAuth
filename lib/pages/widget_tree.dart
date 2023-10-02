import "package:flutter/material.dart";
import "package:travel_app/pages/auth.dart";
import "package:travel_app/screens/explore.dart";
import "package:travel_app/screens/loginscreen.dart";

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const ExploreScreen();
          } else {
            return const LoginScreen();
          }
        });
  }
}
