import 'package:flutter/material.dart';

import '../../../constants.dart';
class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key, this.title, this.press
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            onPressed: press,
            child: Text("More",style: TextStyle(color: Colors.white),),
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 7,
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                color: kPrimaryColor.withOpacity(0.20),
              ))
        ],
      ),
    );
  }
}
