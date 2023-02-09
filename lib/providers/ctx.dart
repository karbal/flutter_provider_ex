import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef ProviderCallback = Store Function(BuildContext context, {bool listen});

class Str<T extends Str<T>> extends ChangeNotifier {
  ChangeNotifierProvider initx() {
    final _this = this as T;
    return ChangeNotifierProvider<T>(create: (_) => _this);
  }

  // static init<T extends Store<T>>(T method) {
  //   return ({
  //     required Ctx ctx,
  //     required String plg,
  //     Function(ProviderCallback store)? callback,
  //   }) {
  //     if (callback != null) callback(Store.storeCallback<T>());
  //     return ChangeNotifierProvider<T>(
  //       create: (_) => method
  //         ..ctx = ctx
  //         ..plg = plg,
  //     );
  //   };
  // }
}

class Store<T extends Store<T>> extends Str<T> {
  /*
  * *
  * * * Attributes
  * *
  */
  late Ctx ctx;
  String plg = "unknown";
  // /*
  // * *
  // * * * Init
  // * *
  // */
  // static ProviderCallback storeCallback<T>() =>
  //     ((context, {bool listen = true}) =>
  //         Provider.of<T>(context, listen: listen)) as ProviderCallback;
  // //*
  // static init<T extends Store<T>>(T method) {
  //   return ({
  //     required Ctx ctx,
  //     required String plg,
  //     Function(ProviderCallback store)? callback,
  //   }) {
  //     if (callback != null) callback(Store.storeCallback<T>());
  //     return ChangeNotifierProvider<T>(
  //       create: (_) => method
  //         ..ctx = ctx
  //         ..plg = plg,
  //     );
  //   };
  // }

  // /*
  // * *
  // * * * Set
  // * *
  // */
  // T set(Function(T self) fun) {
  //   fun(this as T);
  //   notifyListeners();
  //   return this as T;
  // }

  // // Set By a Store
  // S setBy<S>(Function(S self) fun) {
  //   var _plugin = this.of<S>();
  //   fun(_plugin);
  //   notifyListeners();
  //   return _plugin;
  // }

  // /*
  // * *
  // * * * Plugin
  // * *
  // */
  // S of<S>({bool listen = false, BuildContext? context}) =>
  //     Provider.of<S>(context ?? this.ctx.context, listen: listen);
}

class Ctx extends Str<Ctx> {
  late BuildContext context;
  Map<String, Store> plgs = {};
}
