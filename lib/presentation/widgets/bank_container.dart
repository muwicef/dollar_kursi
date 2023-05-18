import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class BankContainer extends StatelessWidget {
  const BankContainer({
    required this.image,
    required this.name,
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.secondarySurface),
            ),
            child: Image.asset(image),
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
                    '11440',
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
                    '11520',
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
    );
  }
}
