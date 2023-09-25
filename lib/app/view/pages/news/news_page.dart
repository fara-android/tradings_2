import 'package:flutter/material.dart';
import 'package:tradings/app/view/pages/news/comp/news_widget.dart';
import 'package:tradings/app/view/pages/news/detail_news_page.dart';
import '../../resources/custom_textstyles.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
                "News",
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
                    child: NewsWidget(
                      image:
                          "https://assets.nationbuilder.com/americanlandscouncil/pages/39/features/original/news.jpg?1469829691",
                      name: "ANA PAULA PEREIRA",
                      title:
                          "Kazakhstan collected \$7M in crypto mining taxes in 2022",
                      avatar:
                          "https://img.freepik.com/free-vector/asian-man-cartoon-illustration-with-vector-aesthetics_1308-153765.jpg?w=2000",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailNewsPage(),
                          ),
                        );
                      },
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
