import 'package:credpal_test/models/product.dart';
import 'package:credpal_test/ui/widgets/general/product_card.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> products;
  final ValueChanged<Product>? onProductTap;

  const ProductsGrid({super.key, required this.products, this.onProductTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.2,
        ),
        itemCount: products.length * 3,
        itemBuilder: (context, index) {
          final product = products[index % products.length];
          return GestureDetector(
            onTap: onProductTap != null ? () => onProductTap!(product) : null,
            child: ProductCard(product: product),
          );
        },
      ),
    );
  }
}
