// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ConfigController = BindInject(
  (i) => ConfigController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigController on _ConfigControllerBase, Store {
  final _$valueAtom = Atom(name: '_ConfigControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$configurationAtom = Atom(name: '_ConfigControllerBase.configuration');

  @override
  Config get configuration {
    _$configurationAtom.reportRead();
    return super.configuration;
  }

  @override
  set configuration(Config value) {
    _$configurationAtom.reportWrite(value, super.configuration, () {
      super.configuration = value;
    });
  }

  final _$_ConfigControllerBaseActionController =
      ActionController(name: '_ConfigControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
configuration: ${configuration}
    ''';
  }
}
