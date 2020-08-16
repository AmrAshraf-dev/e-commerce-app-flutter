import 'package:e_commerce_app_flutter/constants.dart';
import 'package:e_commerce_app_flutter/screens/components/body.dart';
import 'package:e_commerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed:(){},
       ),

    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg",
        color: kTextColor,
        ),
        onPressed:(){},
       ),

       IconButton(
        icon: SvgPicture.asset("assets/icons/cart.svg",
        color: kTextColor,
        ),
        onPressed:(){},
       ),
       SizedBox(width: width*0.05)
     ],
    );
  }
}
