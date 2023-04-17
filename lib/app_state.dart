import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
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
    secureStorage = FlutterSecureStorage();
    _parente = await secureStorage.getString('ff_parente') ?? _parente;
    _login = await secureStorage.getString('ff_login') ?? _login;
    _loginW = await secureStorage.getBool('ff_loginW') ?? _loginW;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  DateTime? _dataNascimento =
      DateTime.fromMillisecondsSinceEpoch(2310342120000);
  DateTime? get dataNascimento => _dataNascimento;
  set dataNascimento(DateTime? _value) {
    _dataNascimento = _value;
  }

  String _mamaeSim = '';
  String get mamaeSim => _mamaeSim;
  set mamaeSim(String _value) {
    _mamaeSim = _value;
  }

  String _mamaeNao = '';
  String get mamaeNao => _mamaeNao;
  set mamaeNao(String _value) {
    _mamaeNao = _value;
  }

  String _LocalBarulhento = '';
  String get LocalBarulhento => _LocalBarulhento;
  set LocalBarulhento(String _value) {
    _LocalBarulhento = _value;
  }

  String _bebeMamou = '';
  String get bebeMamou => _bebeMamou;
  set bebeMamou(String _value) {
    _bebeMamou = _value;
  }

  String _banhoMorno = '';
  String get banhoMorno => _banhoMorno;
  set banhoMorno(String _value) {
    _banhoMorno = _value;
  }

  String _temperaturaAmb = '';
  String get temperaturaAmb => _temperaturaAmb;
  set temperaturaAmb(String _value) {
    _temperaturaAmb = _value;
  }

  String _agitadoHome = '';
  String get agitadoHome => _agitadoHome;
  set agitadoHome(String _value) {
    _agitadoHome = _value;
  }

  String _bbCalmoDeitado = '';
  String get bbCalmoDeitado => _bbCalmoDeitado;
  set bbCalmoDeitado(String _value) {
    _bbCalmoDeitado = _value;
  }

  String _bebeSalivando = '';
  String get bebeSalivando => _bebeSalivando;
  set bebeSalivando(String _value) {
    _bebeSalivando = _value;
  }

  String _bebeAgitadoDormir = '';
  String get bebeAgitadoDormir => _bebeAgitadoDormir;
  set bebeAgitadoDormir(String _value) {
    _bebeAgitadoDormir = _value;
  }

  String _bebeQuenteAnormal = '';
  String get bebeQuenteAnormal => _bebeQuenteAnormal;
  set bebeQuenteAnormal(String _value) {
    _bebeQuenteAnormal = _value;
  }

  String _bbContorcendo = '';
  String get bbContorcendo => _bbContorcendo;
  set bbContorcendo(String _value) {
    _bbContorcendo = _value;
  }

  String _bbSalivando = '';
  String get bbSalivando => _bbSalivando;
  set bbSalivando(String _value) {
    _bbSalivando = _value;
  }

  String _bbAgitadoHRdormir = '';
  String get bbAgitadoHRdormir => _bbAgitadoHRdormir;
  set bbAgitadoHRdormir(String _value) {
    _bbAgitadoHRdormir = _value;
  }

  String _incomodadoHome = '';
  String get incomodadoHome => _incomodadoHome;
  set incomodadoHome(String _value) {
    _incomodadoHome = _value;
  }

  String _chorandoHome = '';
  String get chorandoHome => _chorandoHome;
  set chorandoHome(String _value) {
    _chorandoHome = _value;
  }

  String _playMusica = 'Play';
  String get playMusica => _playMusica;
  set playMusica(String _value) {
    _playMusica = _value;
  }

  String _parente = '';
  String get parente => _parente;
  set parente(String _value) {
    _parente = _value;
    secureStorage.setString('ff_parente', _value);
  }

  void deleteParente() {
    secureStorage.delete(key: 'ff_parente');
  }

  String _AgitadoMamae = '';
  String get AgitadoMamae => _AgitadoMamae;
  set AgitadoMamae(String _value) {
    _AgitadoMamae = _value;
  }

  String _motivacionalMamae = '';
  String get motivacionalMamae => _motivacionalMamae;
  set motivacionalMamae(String _value) {
    _motivacionalMamae = _value;
  }

  int _avancar = 0;
  int get avancar => _avancar;
  set avancar(int _value) {
    _avancar = _value;
  }

  String _BBcocoDuro = '';
  String get BBcocoDuro => _BBcocoDuro;
  set BBcocoDuro(String _value) {
    _BBcocoDuro = _value;
  }

  String _BBcertoContinuaChorar = '';
  String get BBcertoContinuaChorar => _BBcertoContinuaChorar;
  set BBcertoContinuaChorar(String _value) {
    _BBcertoContinuaChorar = _value;
  }

  String _LBarulhentoIncomodado = '';
  String get LBarulhentoIncomodado => _LBarulhentoIncomodado;
  set LBarulhentoIncomodado(String _value) {
    _LBarulhentoIncomodado = _value;
  }

  String _TAmbienteIncomodado = '';
  String get TAmbienteIncomodado => _TAmbienteIncomodado;
  set TAmbienteIncomodado(String _value) {
    _TAmbienteIncomodado = _value;
  }

  String _BanhoMornoIncomodado = '';
  String get BanhoMornoIncomodado => _BanhoMornoIncomodado;
  set BanhoMornoIncomodado(String _value) {
    _BanhoMornoIncomodado = _value;
  }

  String _BBmamouIncomodado = '';
  String get BBmamouIncomodado => _BBmamouIncomodado;
  set BBmamouIncomodado(String _value) {
    _BBmamouIncomodado = _value;
  }

  String _BBcalmoDeitadoIncomodado = '';
  String get BBcalmoDeitadoIncomodado => _BBcalmoDeitadoIncomodado;
  set BBcalmoDeitadoIncomodado(String _value) {
    _BBcalmoDeitadoIncomodado = _value;
  }

  String _BBfebrioIncomodado = '';
  String get BBfebrioIncomodado => _BBfebrioIncomodado;
  set BBfebrioIncomodado(String _value) {
    _BBfebrioIncomodado = _value;
  }

  String _BBencolhendoIncomodado = '';
  String get BBencolhendoIncomodado => _BBencolhendoIncomodado;
  set BBencolhendoIncomodado(String _value) {
    _BBencolhendoIncomodado = _value;
  }

  String _BBsalivandoIncomodado = '';
  String get BBsalivandoIncomodado => _BBsalivandoIncomodado;
  set BBsalivandoIncomodado(String _value) {
    _BBsalivandoIncomodado = _value;
  }

  String _CocoDuroIncomodado = '';
  String get CocoDuroIncomodado => _CocoDuroIncomodado;
  set CocoDuroIncomodado(String _value) {
    _CocoDuroIncomodado = _value;
  }

  String _IncomodadoHomee = '';
  String get IncomodadoHomee => _IncomodadoHomee;
  set IncomodadoHomee(String _value) {
    _IncomodadoHomee = _value;
  }

  String _BBmamouChorando = '';
  String get BBmamouChorando => _BBmamouChorando;
  set BBmamouChorando(String _value) {
    _BBmamouChorando = _value;
  }

  String _LbarulhentoChorando = '';
  String get LbarulhentoChorando => _LbarulhentoChorando;
  set LbarulhentoChorando(String _value) {
    _LbarulhentoChorando = _value;
  }

  String _BBcalmoDeitadoChorando = '';
  String get BBcalmoDeitadoChorando => _BBcalmoDeitadoChorando;
  set BBcalmoDeitadoChorando(String _value) {
    _BBcalmoDeitadoChorando = _value;
  }

  String _BBfebrioChorando = '';
  String get BBfebrioChorando => _BBfebrioChorando;
  set BBfebrioChorando(String _value) {
    _BBfebrioChorando = _value;
  }

  String _BBencolhendoChorando = '';
  String get BBencolhendoChorando => _BBencolhendoChorando;
  set BBencolhendoChorando(String _value) {
    _BBencolhendoChorando = _value;
  }

  String _BBsalivandoChorando = '';
  String get BBsalivandoChorando => _BBsalivandoChorando;
  set BBsalivandoChorando(String _value) {
    _BBsalivandoChorando = _value;
  }

  String _TPambienteChorando = '';
  String get TPambienteChorando => _TPambienteChorando;
  set TPambienteChorando(String _value) {
    _TPambienteChorando = _value;
  }

  String _BBbanhoMornoChorando = '';
  String get BBbanhoMornoChorando => _BBbanhoMornoChorando;
  set BBbanhoMornoChorando(String _value) {
    _BBbanhoMornoChorando = _value;
  }

  String _CocoDuroChorando = '';
  String get CocoDuroChorando => _CocoDuroChorando;
  set CocoDuroChorando(String _value) {
    _CocoDuroChorando = _value;
  }

  String _BBcertoChorar = '';
  String get BBcertoChorar => _BBcertoChorar;
  set BBcertoChorar(String _value) {
    _BBcertoChorar = _value;
  }

  double _volume = 0.0;
  double get volume => _volume;
  set volume(double _value) {
    _volume = _value;
  }

  String _incomodadoMamae = '';
  String get incomodadoMamae => _incomodadoMamae;
  set incomodadoMamae(String _value) {
    _incomodadoMamae = _value;
  }

  String _chorandoMamae = '';
  String get chorandoMamae => _chorandoMamae;
  set chorandoMamae(String _value) {
    _chorandoMamae = _value;
  }

  String _LocalBarulhentoAgitado = '';
  String get LocalBarulhentoAgitado => _LocalBarulhentoAgitado;
  set LocalBarulhentoAgitado(String _value) {
    _LocalBarulhentoAgitado = _value;
  }

  String _LocalBarulhentoIncomodado = '';
  String get LocalBarulhentoIncomodado => _LocalBarulhentoIncomodado;
  set LocalBarulhentoIncomodado(String _value) {
    _LocalBarulhentoIncomodado = _value;
  }

  String _BebeMamouChorando = '';
  String get BebeMamouChorando => _BebeMamouChorando;
  set BebeMamouChorando(String _value) {
    _BebeMamouChorando = _value;
  }

  String _login = '';
  String get login => _login;
  set login(String _value) {
    _login = _value;
    secureStorage.setString('ff_login', _value);
  }

  void deleteLogin() {
    secureStorage.delete(key: 'ff_login');
  }

  String _playGIF = 'play';
  String get playGIF => _playGIF;
  set playGIF(String _value) {
    _playGIF = _value;
  }

  String _pauseGIF = '';
  String get pauseGIF => _pauseGIF;
  set pauseGIF(String _value) {
    _pauseGIF = _value;
  }

  bool _loginW = false;
  bool get loginW => _loginW;
  set loginW(bool _value) {
    _loginW = _value;
    secureStorage.setBool('ff_loginW', _value);
  }

  void deleteLoginW() {
    secureStorage.delete(key: 'ff_loginW');
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
