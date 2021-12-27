import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../core/constants/extension/context_extension.dart';
import '../../core/constants/image/image.dart';
import '../../core/constants/text/text.dart';
import '../../product/state_management/mobx.dart';
import '../../product/widget/button/basket_home_button.dart';

class BasketHome extends StatefulWidget {
  const BasketHome({Key? key}) : super(key: key);

  @override
  State<BasketHome> createState() => _BasketHomeState();
}

class _BasketHomeState extends State<BasketHome> {
  @override
  Widget build(BuildContext context) {
    final _mobx = MobxS();
    List myProducts = MobxS().myProducts;

    return Scaffold(
      body: _body(context, myProducts, _mobx),
    );
  }
}

Widget _body(BuildContext context, List myProducts, MobxS _mobx) => Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topOfBody(context),
          _text(context, _mobx),
          _gridview(context, myProducts, _mobx),
          BasketHomeButton(context, _mobx)
        ]);

Widget _topOfBody(BuildContext context) => SizedBox(
    width: context.width * 1,
    height: context.height * 0.25,
    child: Lottie.asset(ImageNames.lamps));

Widget _text(BuildContext context, MobxS _mobx) => SizedBox(
    height: context.height * 0.1,
    child: Text(
      AppText.baskethomePageTitle,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ));

Widget _gridview(BuildContext context, List myProducts, MobxS _mobx) => Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: SizedBox(
        height: context.height * 0.50,
        child: gridViewMethod(myProducts, _mobx, context),
      ),
    );

GridView gridViewMethod(
    List<dynamic> myProducts, MobxS _mobx, BuildContext context) {
  final list = Provider.of<MobxS>(context);
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 4 / 5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20),
    itemCount: myProducts.length,
    itemBuilder: (context, index) {
      return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.shopping_basket),
                  onPressed: () {
                    list.add(myProducts[index]);
                  },
                )),
            SizedBox(
              width: context.width * 1,
              height: context.height * 0.15,
              child: Image.asset(myProducts[index].image, fit: BoxFit.contain),
            ),
            Text(myProducts[index].productName.toString()),
            Text("${myProducts[index].price.toString()} \$"),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
      );
    },
  );
}
