import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Tharindu Darshana',
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'tharindu@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white,),),
    );
  }
}