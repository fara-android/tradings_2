import 'package:flutter/material.dart';
import 'package:tradings/app/view/resources/my_colors.dart';

import '../../resources/custom_textstyles.dart';

class DetailNewsPage extends StatelessWidget {
  const DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Image.asset("assets/images/share_icon.png",
                width: 25, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: MyColors.white,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/asian-man-cartoon-illustration-with-vector-aesthetics_1308-153765.jpg?w=2000"),
                ),
                const SizedBox(width: 12),
                Text(
                  "ANA PAULA PEREIRA",
                  style: CustomTextStyles.customTextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              "Kazakhstan collected \$7M in crypto mining taxes in 2022",
              style: CustomTextStyles.customTextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.circle, color: MyColors.grey, size: 6),
                const SizedBox(width: 10),
                Text(
                  "18 hours ago",
                  style: CustomTextStyles.customTextStyle(
                    color: MyColors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 224,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://assets.nationbuilder.com/americanlandscouncil/pages/39/features/original/news.jpg?1469829691",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "The government of Kazakhstan has received 3.07 billion tenge (approximately \$7 million) in tax payments from crypto mining entities in 2022, following the implementation of an amended law regulating the fiscal burden of mining cryptocurrencies, according to the local media reports."
              'Preliminary data from the government for 2023 shows that mining fees collected by April 27 totaled 240 million tenge - worth over \$541,000 at the time of writing. The figures are much lower than the 652 million tenge (~\$1.5 million) in fees paid in the first quarter of 2022.'
              "Kazakhstan ranks among the world's top Bitcoin mining hubs. As of January 2022, the Central Asian country contributed to 13.22% of the total Bitcoin hash rate, just behind the United States (37.84%) and China (21.11%), shows data from Cambridge Centre for Alternative Finance. The country introduced taxes on digital mining on January 1, 2022, based on electricity consumption by mining entities. The law came into effect amid a growing national frustration with undertaxed usage of the national power grid by crypto miners, Cointelegraph reported. The amended legislation was also considered a legal path for further adoption amid tightening regulations around the world."
              "A wave of foreign mining operators relocated to Kazakhstan in 2021 during the last bull market, affecting already difficult relations between the country and miners. Some estimates indicate that more than 87,849 rigs have been brought to the territory by November 2021 following China's crackdown on mining activities."
              "Recently, the government announced plans to introduce new crypto regulations to curb tax fraud and unlawful business operations. One of the proposals calls for a government approval for secured digital assets issuers, while another would require miners to sell at least 75% of crypto earned via registered exchanges. The move is expected to reduce tax evasion.",
              style: CustomTextStyles.customTextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
