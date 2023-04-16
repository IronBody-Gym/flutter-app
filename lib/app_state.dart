import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _nombres1 = prefs.getString('ff_nombres1') ?? _nombres1;
    _apellidos1 = prefs.getString('ff_apellidos1') ?? _apellidos1;
    _idNum1 = prefs.getInt('ff_idNum1') ?? _idNum1;
    _gender1 = prefs.getString('ff_gender1') ?? _gender1;
    _phoneNum1 = prefs.getString('ff_phoneNum1') ?? _phoneNum1;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _nombres1 = '';
  String get nombres1 => _nombres1;
  set nombres1(String _value) {
    _nombres1 = _value;
    prefs.setString('ff_nombres1', _value);
  }

  String _apellidos1 = '';
  String get apellidos1 => _apellidos1;
  set apellidos1(String _value) {
    _apellidos1 = _value;
    prefs.setString('ff_apellidos1', _value);
  }

  int _idNum1 = 0;
  int get idNum1 => _idNum1;
  set idNum1(int _value) {
    _idNum1 = _value;
    prefs.setInt('ff_idNum1', _value);
  }

  DateTime? _fechaNam1 = DateTime.fromMillisecondsSinceEpoch(1679707440000);
  DateTime? get fechaNam1 => _fechaNam1;
  set fechaNam1(DateTime? _value) {
    _fechaNam1 = _value;
  }

  String _gender1 = '';
  String get gender1 => _gender1;
  set gender1(String _value) {
    _gender1 = _value;
    prefs.setString('ff_gender1', _value);
  }

  String _phoneNum1 = '';
  String get phoneNum1 => _phoneNum1;
  set phoneNum1(String _value) {
    _phoneNum1 = _value;
    prefs.setString('ff_phoneNum1', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
