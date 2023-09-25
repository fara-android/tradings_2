import 'package:flutter/material.dart';

import '../../../components/custom_animated_container.dart';
import '../../../resources/custom_textstyles.dart';

class NewsWidget extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final String avatar;
  final Function() onTap;
  const NewsWidget({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.avatar,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAnimationContainer(
      onPressed: onTap,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 224,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 224,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        backgroundImage: NetworkImage(avatar),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        name,
                        style: CustomTextStyles.customTextStyle(
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.customTextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.w800,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
