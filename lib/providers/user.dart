import 'package:ex/providers/ctx.dart';

class User extends Store<User> {
  int _count = 10;

  int get count => _count;

  set count(int count) {
    _count = count;
    notifyListeners();
  }
}
