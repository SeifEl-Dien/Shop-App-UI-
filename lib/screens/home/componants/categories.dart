import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categpries extends StatefulWidget {
  const Categpries({Key? key}) : super(key: key);

  @override
  State<Categpries> createState() => _CategpriesState();
}

class _CategpriesState extends State<Categpries> {
  List categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses', 'Shirts'];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
          child: SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildcategories(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildcategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  color: selectedindex == index ? kTextColor : kTextLightColor,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 30,
              color: selectedindex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
