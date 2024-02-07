import 'package:flutter/material.dart';

import '../models/product_detail.dart';

class RacketItemWidget extends StatelessWidget {
  const RacketItemWidget({super.key, required this.productDetails});

  final ProductDetail productDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(1, 4), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(-0.5, -0.5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                productDetails.image,
                // replace with the actual asset path
                width: double.infinity,
                height: double.infinity,
                // set the width again to ensure the desired width
                // set the height again to ensure the desired height
                fit: BoxFit.fitHeight, // adjust the fit as needed
              ),
            ),
          ),
          Text(
            productDetails.name.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            productDetails.price.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
