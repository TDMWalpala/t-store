import 'package:flutter/widgets.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/text/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemCount: 3,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          if(showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  TProductQtyWithAddRemove(),
                ],
              ),
              TProductPriceText(price: '250')
            ],
          ),
        ],
      ),
    );
  }
}
