// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import '../../resources/my_colors.dart';
import '../presentation/presentation_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome_img.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1512), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const PresentationPage(),
      ),
    );
  }
}
