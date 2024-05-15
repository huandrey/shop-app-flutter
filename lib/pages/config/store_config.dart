import 'package:flutter/material.dart';

enum TipoProductTile {
  minimalist,
  large,
}

class StoreConfig extends ChangeNotifier {
  TipoProductTile _tipoProductTile = TipoProductTile.large;

  TipoProductTile get tipoProductTile => _tipoProductTile;

  void setTipoProductTile(TipoProductTile tipoProductTile) {
    _tipoProductTile = tipoProductTile;
    notifyListeners();
  }
}
