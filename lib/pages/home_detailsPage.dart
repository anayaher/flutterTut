// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: Text(
          catalog.name,
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl4.bold.color(Colors.red).make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(StadiumBorder()),
                        backgroundColor:
                            MaterialStatePropertyAll(MyTheme.darkBluishColor)),
                    child: "Buy".text.make())
                .wh(100, 40)
          ],
        ).p8(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context)
                .w(context.screenWidth),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 35, left: 12, right: 12)),
                    catalog.name.text.size(4).bold.make(),
                    catalog.decs.text
                        .size(3)
                        .textStyle(context.captionStyle)
                        .make(),
                  ],
                ).w(context.screenWidth),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
