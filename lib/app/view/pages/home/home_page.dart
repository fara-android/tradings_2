import 'package:flutter/material.dart';
import 'package:tradings/app/view/pages/home/comp/assets_widget.dart';
import 'package:tradings/app/view/resources/custom_textstyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListView(
            children: [
              Text(
                "Assets",
                style: CustomTextStyles.customTextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w800,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 14),
              Column(
                children: List.generate(
                  8,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: AssetsWidget(
                      sum: "13.950,14",
                      sumTwo: "2,04",
                      currency: "EUR/USD",
                      onTap: () {},
                      color: Theme.of(context).colorScheme.primary,
                    ),
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
