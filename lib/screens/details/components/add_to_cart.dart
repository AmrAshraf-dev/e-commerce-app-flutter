import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding:EdgeInsets.symmetric(vertical: height*0.04),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: width*0.06),
            height: height*0.07,
            width: width*0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border:Border.all(color: product.color
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/add_to_cart.svg',
                color: product.color,
              ),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: height*0.08,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: (){},
                child: Text('Buy  Now'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
