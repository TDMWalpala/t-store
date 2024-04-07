import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products.card/card_menu_icon.dart';
import 'package:t_store/common/widgets/text/brand_title_text_with_verified.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [TCardCounterIcon(onPressed: () {}, iconColor: TColors.white)],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TCircularContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                background: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            dark ? TColors.white : TColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: TSizes.spaceBtwItems / 2,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerificationIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            '56 products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
