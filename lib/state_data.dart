import 'package:bart_tech/model/Product.dart';
import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  List<Product> products = [];

  void addProductToMyBasket(Product product) {
    products.add(product);
    notifyListeners();
  }

  void removeProductFromMyBasket(int index) {
    products.removeAt(index);
    notifyListeners();
  }
}
