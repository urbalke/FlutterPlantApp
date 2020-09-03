import 'package:flutter/material.dart';

import 'package:plants/screens/details/components/ImageAndIcons.dart';
import 'package:plants/screens/details/components/TitleAndPrice.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Anastasia',
            price: 440,
            country: 'Russia',
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding),
            child: Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: FlatButton(
                  onPressed: () {},
                  child: Text('Description'),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
