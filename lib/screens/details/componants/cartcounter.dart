import 'package:flutter/material.dart';

import '../../../constants.dart';

class cartcounter extends StatefulWidget {
  const cartcounter({
    Key? key,
  }) : super(key: key);

  @override
  State<cartcounter> createState() => _cartcounterState();
}

class _cartcounterState extends State<cartcounter> {
  int numofitems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buttonbuild(Icons.remove, () {
          if (numofitems > 1) {
            setState(() {
              numofitems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numofitems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buttonbuild(Icons.add, () {
          setState(() {
            numofitems++;
          });
        }),
      ],
    );
  }

  SizedBox buttonbuild(IconData icon, Function()? press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}
