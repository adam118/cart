import 'package:cart/model/item.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  Map<String, Item> _items = {};

  Map<String, Item> get items {
    return {..._items};
  }

  List<Item> _item = [];
  double _totalprice = 0.0;
  double _quen = 1;

  void add(Item item) {
    _item.add(item);
    _totalprice += item.price;
    _quen += item.qun;
    notifyListeners();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price;
    });
    return total;
  }

  void removeall(Item item) {
    _item.clear();
    _totalprice -= item.price;
    _quen -= item.qun;
    notifyListeners();
  }

  void remove(Item item) {
    _item.remove(item);
    _totalprice -= item.price;
    _quen -= item.qun;
    notifyListeners();
  }

  void rotat(Item item) {}

  int get count {
    return _item.length;
  }

  double get totalprice {
    return _totalprice;
  }

  List<Item> get bascket {
    return _item;
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
