import 'package:mobx/mobx.dart';

import '../../core/constants/image/image.dart';
import '../../core/constants/navigator/routes.dart';
import '../../core/init/navigator/navigation_service.dart';

part 'mobx.g.dart';

class MobxS = MobxStateManagement with _$MobxS;

abstract class MobxStateManagement with Store {
  ObservableList<Products> myProducts = [
    Products(
        image: ImageNames.computer, productName: "MacbookAir", price: 1100),
    Products(image: ImageNames.iphone13, productName: "Iphone13", price: 1500),
    Products(
        image: ImageNames.macbookpro, productName: "Macbook Pro", price: 2000),
    Products(image: ImageNames.ipad, productName: "Ipad", price: 700),
    Products(
        image: ImageNames.magickeyboard,
        productName: "MagicKeyboard",
        price: 300),
    Products(
        image: ImageNames.computer, productName: "MacbookAir", price: 1500),
    Products(
        image: ImageNames.computer, productName: "MacbookAir", price: 1500),
  ].asObservable();
  ObservableList<Products> myProductsBasket = <Products>[].asObservable();

  @observable
  int total = 0;

  @observable
  var imageChangedName = ImageNames.merry;

  @observable
  var imageonboard = ImageNames.merrychristmass;

  Products? products;

  @action
  void add(Products products) {
    myProductsBasket.add(products);
    total += products.price!.toInt();
  }

  @action
  void increment() {
    total++;
  }

  @action
  void delete(Products products) {
    myProductsBasket.remove(products);
    total -= products.price!.toInt();
  }

  @observable
  bool imageisloading = false;

  @action
  Future<void> isPressed() async {
    imageonboard = ImageNames.merry;
    imageisloading = !imageisloading;
    await Future.delayed(const Duration(seconds: 4));

    NavigationService.instance.navigateToPage(RouteConstants.baskethome);
  }
}

class Products {
  String? productName;
  String? image;
  int? price;

  Products({this.image, this.price, this.productName});
}
