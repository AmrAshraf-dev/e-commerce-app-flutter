import 'package:flutter/material.dart';
import '../../../constants.dart';

class CardCounter extends StatefulWidget {
  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon:Icons.remove,
          press:(){
            if(numOfItems>1){
              setState(() {
                numOfItems --;
              });
            }
          },
        ),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: width*0.05),
          child: Text(numOfItems.toString().padLeft(2,'0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: (){
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon,Function press}) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width*0.1,
      height: height*0.05,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

