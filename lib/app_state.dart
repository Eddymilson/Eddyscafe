import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _carrinho = [];
  List<DocumentReference> get carrinho => _carrinho;
  set carrinho(List<DocumentReference> value) {
    _carrinho = value;
  }

  void addToCarrinho(DocumentReference value) {
    carrinho.add(value);
  }

  void removeFromCarrinho(DocumentReference value) {
    carrinho.remove(value);
  }

  void removeAtIndexFromCarrinho(int index) {
    carrinho.removeAt(index);
  }

  void updateCarrinhoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    carrinho[index] = updateFn(_carrinho[index]);
  }

  void insertAtIndexInCarrinho(int index, DocumentReference value) {
    carrinho.insert(index, value);
  }

  double _somaCarrinho = 0.0;
  double get somaCarrinho => _somaCarrinho;
  set somaCarrinho(double value) {
    _somaCarrinho = value;
  }
}
