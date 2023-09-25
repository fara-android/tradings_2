import 'package:flutter/material.dart';
import 'package:tradings/app/view/components/custom_animated_container.dart';

import '../../../resources/custom_textstyles.dart';
import '../../../resources/my_colors.dart';

class AssetsWidget extends StatelessWidget {
  final String sum;
  final String sumTwo;
  final String currency;
  final Function() onTap;
  final Color color;
  const AssetsWidget({
    super.key,
    required this.sum,
    required this.sumTwo,
    required this.currency,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAnimationContainer(
      onPressed: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 148,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: color,
          image: const DecorationImage(
            image: AssetImage("assets/images/asset_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/eur_usd.png", width: 54),
                  const SizedBox(width: 4),
                  Text(
                    currency,
                    style: CustomTextStyles.customTextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$ $sum",
                    style: CustomTextStyles.customTextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_drop_up_outlined,
                    color: MyColors.green,
                    size: 30,
                  ),
                  Text(
                    "\$ $sumTwo",
                    style: CustomTextStyles.customTextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
