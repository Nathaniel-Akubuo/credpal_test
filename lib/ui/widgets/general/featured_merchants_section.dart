import 'package:credpal_test/models/merchant.dart';
import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/ui/widgets/buttons/custom_card.dart';
import 'package:credpal_test/ui/widgets/general/merchant_card.dart';
import 'package:credpal_test/ui/widgets/text/custom_text.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class FeaturedMerchantsSection extends StatelessWidget {
  final List<Merchant> merchants;

  const FeaturedMerchantsSection({super.key, required this.merchants});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 34),
      child: Column(
        children: [
          _SectionHeader(),
          verticalSpace(16),
          _MerchantsGrid(merchants: merchants),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText.w900('Featured Merchants', fontSize: 16, color: k33334D),
        CustomText.w500('View all', fontSize: 12, color: k274FED),
      ],
    );
  }
}

class _MerchantsGrid extends StatelessWidget {
  final List<Merchant> merchants;

  const _MerchantsGrid({required this.merchants});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MerchantRow(merchants: merchants.take(4).toList()),
        verticalSpace(20),
        _MerchantRow(merchants: merchants.skip(4).take(4).toList()),
        verticalSpace(20),
        _MerchantRow(merchants: merchants.skip(8).take(2).toList(), alignLeft: true),
      ],
    );
  }
}

class _MerchantRow extends StatelessWidget {
  final List<Merchant> merchants;
  final bool alignLeft;

  const _MerchantRow({required this.merchants, this.alignLeft = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignLeft ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < merchants.length; i++) ...[
          MerchantCard(merchant: merchants[i]),
          if (alignLeft && i < merchants.length - 1) horizontalSpace(32),
        ],
      ],
    );
  }
}
