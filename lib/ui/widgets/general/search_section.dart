import 'package:credpal_test/ui/widgets/buttons/ripple_card.dart';
import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/util/fonts.dart';
import 'package:credpal_test/ui/widgets/buttons/custom_card.dart';
import 'package:credpal_test/ui/widgets/images/image_card.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  final ValueChanged<String>? onSearch;

  const SearchSection({super.key, this.onSearch});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        children: [
          Expanded(child: _SearchField(onChanged: onSearch)),
          horizontalSpace(20),
          RippleCard(
            color: kF4F5FE,
            size: 45,
            borderRadius: k10pxBorderRadius,
            child: Center(child: ImageCard.local('scan.svg')),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const _SearchField({this.onChanged});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );

    return SizedBox(
      height: 40,
      child: TextField(
        onChanged: onChanged,
        cursorColor: k1A1A1A,
        style: Avenir.w400(12, color: k1A1A1A),
        decoration: InputDecoration(
          hintText: 'Search for products or stores',
          hintStyle: Avenir.w400(12, color: k9494B8),
          filled: true,
          fillColor: kF1F3FE,
          contentPadding: EdgeInsets.zero,
          prefixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ImageCard.local('search.svg')],
          ),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
