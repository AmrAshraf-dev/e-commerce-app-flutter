import 'package:e_commerce_app_flutter/models/Product.dart';
import 'package:e_commerce_app_flutter/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'card.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width*0.05),
           child: Text('Women',
           style:Theme.of(context).
           textTheme.headline5.copyWith(fontWeight:FontWeight.bold),
           ),
         ),
         Categories(),
         //ItemCard(),
         Expanded(child:
         Padding(
           padding:EdgeInsets.symmetric(horizontal: width*0.07),
           child: GridView.builder(
             itemCount:products.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 9,
                 crossAxisSpacing: 9,
                 childAspectRatio:0.75,
             ),
             itemBuilder: (context,index)=>ItemCard(product: products[index],
               press:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index],
                 ),
                ),
               ),
             ),
           ),
          ),
         ),
       ],
    );
  }
}

