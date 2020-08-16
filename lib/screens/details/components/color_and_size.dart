import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('color'),
              Row(children: <Widget>[
                ColorDot(color: Colors.blue, isSelected: true),
                ColorDot(color: Colors.yellow,),
                ColorDot(color: Colors.red,),
              ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: 'size\n',
                ),
                TextSpan(text: '${product.size} cm',
                  style: Theme.of(context).textTheme.headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key, this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        top: height*0.008,
        right: width*0.02,
      ),
      padding: EdgeInsets.all(2.5),
      height: height*0.04,
      width: width*0.06,
      decoration: BoxDecoration(
        border: Border.all(
          color:isSelected ? color : Colors.transparent ,
        ),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
