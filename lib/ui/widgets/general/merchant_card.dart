import 'package:credpal_test/models/merchant.dart';
import 'package:credpal_test/ui/widgets/buttons/ripple_card.dart';
import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/ui/widgets/images/image_card.dart';
import 'package:credpal_test/ui/widgets/text/custom_text.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class MerchantCard extends StatelessWidget {
  final Merchant merchant;

  const MerchantCard({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            RippleCard(
              size: 60,
              color: merchant.backgroundColor,
              borderRadius: k64pxBorderRadius,
              child: Center(
                child: ImageCard.local(
                  merchant.logoUrl,
                  fit: BoxFit.contain,
                  borderRadius: k64pxBorderRadius,
                  width: 40,
                  height: 16,
                ),
              ),
            ),
            if (merchant.hasGreenDot)
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: const Color(0xff00C853),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        verticalSpace(8),
        CustomText.w500(merchant.name, fontSize: 12, color: k1A1A1A),
      ],
    );
  }
}
