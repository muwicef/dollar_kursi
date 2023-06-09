import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_text_styles.dart';

class BankContainer extends StatelessWidget {
  const BankContainer({
    required this.image,
    required this.name,
    required this.buyPrice,
    required this.sellPrice,
    super.key,
  });

  final String name;
  final String image;
  final int buyPrice;
  final int sellPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.red),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: image,
                  placeholder: (context, url) {
                    return Image.asset(AppAssets.images.noImage);
                  },
                  errorWidget: (context, url, error) => Image.asset(AppAssets.images.noImage),
                ),
              ),
            ),
            Text(
              name,
              style: AppTextStyles.title,
            ),
            const Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      '$buyPrice',
                      style: AppTextStyles.description,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppAssets.icons.up),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '$sellPrice',
                      style: AppTextStyles.description,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppAssets.icons.down),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
