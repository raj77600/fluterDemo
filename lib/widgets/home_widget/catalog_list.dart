import 'package:fluterdemo/models/catalog.dart';
import 'package:fluterdemo/pages/_homepage.dart';
import 'package:fluterdemo/pages/home_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';
import 'catalog_image.dart';
class cataloglist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailPage(catalog: catalog,),)),
            child: catalogItem(catalog: catalog));
      },

    );
  }
}
class catalogItem extends  StatelessWidget{
  final Item catalog;

  const catalogItem({Key? key, required this.catalog}) : assert(catalog!=null),super(key: key);
  @override
  Widget build(BuildContext context) {

    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: catalogimage(
                image: catalog.image,
              ),
            ),
            Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.bold.lg.color(MyTheme.darkblue).make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: Vx.mH0,
                      children: [
                        "\$${catalog.price}".text.bold.lg.make(),
                        ElevatedButton(onPressed:() {

                        },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(MyTheme.darkblue),
                                shape: MaterialStateProperty.all(StadiumBorder())

                            ),

                            child: "Buy".text.bold.lg.make())
                      ],
                    ).pOnly(right: 8.0)
                  ],
                ))
          ],
        )
    ).white.roundedLg.square(150).make().py(16);
  }

}