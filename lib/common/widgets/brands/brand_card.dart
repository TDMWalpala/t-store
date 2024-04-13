import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTab,
  });

  final bool showBorder;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTab,
      child: TCircularContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        background: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerificationIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '56 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
