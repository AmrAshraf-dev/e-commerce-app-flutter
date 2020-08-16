import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: width*0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style:Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'price\n'),
                    TextSpan(text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: width*0.2),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(product.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
