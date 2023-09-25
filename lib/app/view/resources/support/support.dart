import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  final Color color;
  const Support({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ViewScreen(
            //       url: AppLinks.privacyPolicy,
            //       title: 'Privacy Policy',
            //     ),
            //   ),
            // ),
            child: Text(
              "Privacy Policy",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: color,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Premium.checkRestore(context);
            },
            child: Text(
              "Restore purchases",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: color,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          InkWell(
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ViewScreen(
            //       url: AppLinks.termOfUse,
            //       title: 'Terms of use',
            //     ),
            //   ),
            // ),
            child: Text(
              "Terms of use",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                color: color,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
