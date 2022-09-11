import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'color',
              ),
              Row(
                children: [
                  colordot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  colordot(
                    color: Color(0xFFF8C078),
                  ),
                  colordot(
                    color: Color(0xFFA29898),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: 'Size\n'),
            TextSpan(
              text: '${product.size} cm',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ])),
        ),
      ],
    );
  }
}

class colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colordot({
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
