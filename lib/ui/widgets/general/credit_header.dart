import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/util/fonts.dart';
import 'package:credpal_test/ui/widgets/buttons/custom_card.dart';
import 'package:credpal_test/ui/widgets/buttons/ripple_card.dart';
import 'package:credpal_test/ui/widgets/general/custom_layouts.dart';
import 'package:credpal_test/ui/widgets/text/custom_richtext.dart';
import 'package:credpal_test/ui/widgets/text/custom_text.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class CreditHeader extends StatelessWidget {
  final num shoppingLimit;
  final VoidCallback? onActivateCredit;
  final VoidCallback? onInfoTap;

  const CreditHeader({super.key, this.shoppingLimit = 0, this.onActivateCredit, this.onInfoTap});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: kD0DAFF,
      child: PaddedRow(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 44),
        children: [
          CustomText.w900('Pay later\neverywhere', fontSize: 28),
          horizontalSpace(8),
          _InfoButton(onTap: onInfoTap),
          Expanded(
            child: _CreditInfo(shoppingLimit: shoppingLimit, onActivateCredit: onActivateCredit),
          ),
        ],
      ),
    );
  }
}

class _InfoButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _InfoButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return RippleCard(
      size: 18,
      borderRadius: k24pxBorderRadius,
      onTap: onTap,
      child: Center(child: CustomText.w500('!', color: k274FED, fontSize: 12)),
    );
  }
}

class _CreditInfo extends StatelessWidget {
  final num shoppingLimit;
  final VoidCallback? onActivateCredit;

  const _CreditInfo({required this.shoppingLimit, this.onActivateCredit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomRichText.split(
          text: 'Shopping limit: ₦$shoppingLimit',
          style: Avenir.w500(12, color: k20294A),
        ),
        verticalSpace(10),
        _ActivateCreditButton(onTap: onActivateCredit),
      ],
    );
  }
}

class _ActivateCreditButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _ActivateCreditButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return RippleCard(
      borderRadius: k4pxBorderRadius,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: k274FED,
      onTap: onTap,
      child: CustomText.w700('Activate credit', color: Colors.white),
    );
  }
}
