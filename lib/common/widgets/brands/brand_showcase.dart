import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      background: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            children: images.map((image) => BrandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget BrandTopProductImageWidget(String image, context) {
    return Expanded(
              child: TCircularContainer(
                height: 100,
                background: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
                margin: const EdgeInsets.only(right: TSizes.sm),
                padding: const EdgeInsets.all(TSizes.md),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            );
  }
}

