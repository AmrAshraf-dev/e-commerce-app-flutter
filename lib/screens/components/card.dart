import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              //  height: 180,
              //  width: 160,
              decoration: BoxDecoration(color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(child: Image.asset(product.image),
                     tag: '${product.id}',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical:height*0.01),
            child: Text(product.title,
              style: TextStyle(color:kTextLightColor),
            ),
          ),
          Text("\$${product.price}",style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
