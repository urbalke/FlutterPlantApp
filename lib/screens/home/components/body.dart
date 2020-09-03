import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plants/constants.dart';

import 'package:plants/screens/home/components/HeaderWithSearchBox.dart';
import 'package:plants/screens/home/components/RecomendsPlants.dart';
import 'package:plants/screens/home/components/TitleWithMoreBtn.dart';

import 'FeaturedPlantsView.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlantsView(),
          SizedBox()
        ],
      ),
    );
  }
}
