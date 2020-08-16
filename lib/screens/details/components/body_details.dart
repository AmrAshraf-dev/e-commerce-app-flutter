import 'package:e_commerce_app_flutter/constants.dart';
import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height*0.3),
                padding: EdgeInsets.only(top: size.height*0.12,left:size.width*0.05,right: size.width*0.05),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children:<Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: size.height*0.025),
                    Description(product: product),
                    SizedBox(height: size.height*0.025),
                    CounterWithFavButton(),
                    SizedBox(height: size.height*0.025),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
        ),
      ],
    ),
  );
}
}
