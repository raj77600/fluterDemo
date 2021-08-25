import 'package:flutter/cupertino.dart';

import '../themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogheader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkblue).make(),
        "Tranding product".text.xl2.bold.make(),
      ],

    );
  }

}