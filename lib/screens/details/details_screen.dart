import 'package:e_commerce_app_flutter/constants.dart';
import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body_details.dart';

class DetailsScreen extends StatelessWidget {
final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(product: product),
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white),
                            onPressed:() =>Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(icon:SvgPicture.asset('assets/icons/search.svg',
          color: Colors.white,
          ),
              onPressed:(){}),
          IconButton(icon: SvgPicture.asset('assets/icons/cart.svg',
          color: Colors.white,
          ),
              onPressed: (){}),
        ],
      ),
    );
  }
}
