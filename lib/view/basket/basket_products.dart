import '../../core/constants/color/color.dart';
import '../../core/constants/text/text.dart';
import '../../product/state_management/mobx.dart';
import 'package:flutter/material.dart';
import '../../core/constants/extension/context_extension.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class BasketProducts extends StatefulWidget {
  const BasketProducts({Key? key}) : super(key: key);

  @override
  _BasketProductsState createState() => _BasketProductsState();
}

class _BasketProductsState extends State<BasketProducts> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final list = Provider.of<MobxS>(context);
    final _mobx = MobxS();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.shoppingCardPageTitle),
        backgroundColor: AppColor.colorRed,
      ),
      body: _body(context, _mobx),
    );
  }
}

Widget _body(BuildContext context, MobxS _mobx) {
  final list = Provider.of<MobxS>(context);
  return Column(
    children: [
      Observer(
        builder: (_) => Expanded(
            child: list.myProductsBasket.isEmpty
                ? Center(child: Text(AppText.shoppingCardEmpty))
                : _listview(context, _mobx, list)),
      ),
      Observer(
        builder: (_) => Card(
            child: ListTile(
          title: Text('Total Price => ${list.total} \$'),
        )),
      ),
    ],
  );
}

Widget _listview(BuildContext context, MobxS _mobx, list) {
  return ListView.builder(
      itemCount: list.myProductsBasket.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(list.myProductsBasket[index].productName.toString()),
            leading: SizedBox(
              width: context.width * 0.1,
              child: Image.asset(list.myProductsBasket[index].image.toString(),
                  fit: BoxFit.contain),
            ),
            trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  list.delete(list.myProductsBasket[index]);
                }),
          ),
        );
      });
}
