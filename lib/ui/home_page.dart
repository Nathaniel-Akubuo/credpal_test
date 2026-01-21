import 'package:credpal_test/models/merchant.dart';
import 'package:credpal_test/models/product.dart';
import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/ui/widgets/general/credit_header.dart';
import 'package:credpal_test/ui/widgets/general/featured_merchants_section.dart';
import 'package:credpal_test/ui/widgets/general/custom_layouts.dart';
import 'package:credpal_test/ui/widgets/general/products_grid.dart';
import 'package:credpal_test/ui/widgets/general/search_section.dart';
import 'package:credpal_test/util/ui_helpers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: kF1F3FE,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: kD0DAFF,
          surfaceTintColor: Colors.transparent,
        ),
        body: Column(
          children: [
            const CreditHeader(shoppingLimit: 0),
            const SearchSection(),
            Expanded(
              child: ScrollableColumn(
                children: [
                  verticalSpace(14),
                  ProductsGrid(products: Product.sampleProducts),
                  verticalSpace(12),
                  FeaturedMerchantsSection(merchants: Merchant.sampleMerchants),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
