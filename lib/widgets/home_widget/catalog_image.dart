import 'package:flutter/cupertino.dart';

import '../themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogimage extends StatelessWidget {
  final String image;

  const catalogimage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image
        .network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .p16
        .make()
        .w32(context);
  }
}