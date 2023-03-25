import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_detailsPage.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import 'Catalog_Image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          child: CatalogItem(catalog: catalog),
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailsPage(catalog: catalog)))
          },
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  static Color darkBluishColor = Color.fromARGB(255, 67, 57, 98);
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.size(6).bold.make(),
            catalog.decs.text.size(3).textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}"
                    .text
                    .bold
                    .color(MyTheme.darkBluishColor)
                    .make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(StadiumBorder()),
                        backgroundColor:
                            MaterialStatePropertyAll(MyTheme.darkBluishColor)),
                    child: "Buy".text.make())
              ],
            )
          ],
        ))
      ],
    ))
        .white
        .roundedLg
        .square(160)
        .margin(EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0))
        .make();
  }
}
