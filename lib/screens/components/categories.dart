import 'package:e_commerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';
// stateful widget for categories
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
  }

class _CategoriesState extends State<Categories> {
  List <String> categories = ["Hand bag","Jewellery","Footwear","Dresses"];
  // by default our selected items will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding:EdgeInsets.symmetric(vertical:height*0.03),
      child: SizedBox(
        height: height*0.05,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
           itemBuilder: (context,index) => buildCategory(index),
          ),
        ),
    );
  }

  Widget buildCategory(int index) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
        child: Padding(
        padding:EdgeInsets.symmetric(horizontal: width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? kTextColor : kTextLightColor,
            ),
               ),
               Container(
                 margin: EdgeInsets.only(top:5), //top padding 5
                 height: 2,
                 width: width*0.07,
                 color: selectedIndex == index ? Colors.black : Colors.transparent,

               ),
          ],
        ),
      ),
    );
  }
}