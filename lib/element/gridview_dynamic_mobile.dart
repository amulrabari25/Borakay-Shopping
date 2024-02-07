import 'package:borakay_shopping/element/racket_item.dart';
import 'package:borakay_shopping/models/product_detail.dart';
import 'package:flutter/material.dart';

import '../pages/product_description.dart';

class GridViewDynamicMobileWidget extends StatelessWidget {
  const GridViewDynamicMobileWidget({super.key, required this.productDetails});

  final List<ProductDetail> productDetails;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      itemCount: productDetails.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Future.delayed(const Duration(milliseconds: 100), () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDescription(productDetail: productDetails[index]),
                ),
              );
            });
          },
          child: RacketItemWidget(
            productDetails: productDetails[index],
          ),
        );
      },
    );
  }
}
