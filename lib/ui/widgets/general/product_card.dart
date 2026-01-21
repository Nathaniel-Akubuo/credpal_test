import 'package:credpal_test/models/product.dart';
import 'package:credpal_test/ui/widgets/buttons/ripple_card.dart';
import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/util/fonts.dart';
import 'package:credpal_test/ui/widgets/buttons/custom_card.dart';
import 'package:credpal_test/ui/widgets/images/image_card.dart';
import 'package:credpal_test/ui/widgets/text/custom_richtext.dart';
import 'package:credpal_test/ui/widgets/text/custom_text.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return RippleCard(
      borderRadius: k12pxBorderRadius,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(4),
          Expanded(
            child: Stack(
              children: [
                Center(child: ImageCard.local(product.imageUrl, fit: BoxFit.contain)),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: k64pxBorderRadius),
                    elevation: 1,
                    child: CustomCard(
                      borderRadius: k64pxBorderRadius,
                      size: 50,
                      child: Center(
                        child: ImageCard.local(product.badgeImageUrl, height: 24, width: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(8),
          CustomText.w700(product.title, fontSize: 14, color: k1A1A1A),
          verticalSpace(8),
          Row(
            children: [
              CustomRichText.split(
                text: '₦${_formatPrice(product.price)}',
                style: Avenir.w700(14, color: k274FED),
              ),
              horizontalSpace(8),
              CustomRichText.split(
                text: '₦${_formatPrice(product.previousPrice)}',
                style: Avenir.w500(
                  12,
                  color: kB3B3CC,
                ).copyWith(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatPrice(num price) {
    return price.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match[1]},',
    );
  }
}
