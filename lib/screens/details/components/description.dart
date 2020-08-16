import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class Description extends StatelessWidget {

  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding:EdgeInsets.symmetric(vertical: height*0.03),
      child: Text(product.description,
        style: TextStyle(height:height*0.0022),
      ),
    );
  }
}
