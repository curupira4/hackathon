import '../database.dart';

class RegistroTable extends SupabaseTable<RegistroRow> {
  @override
  String get tableName => 'registro';

  @override
  RegistroRow createRow(Map<String, dynamic> data) => RegistroRow(data);
}

class RegistroRow extends SupabaseDataRow {
  RegistroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegistroTable();

  String get registroId => getField<String>('registro_id')!;
  set registroId(String value) => setField<String>('registro_id', value);

  String? get tipoRegistro => getField<String>('tipo_registro');
  set tipoRegistro(String? value) => setField<String>('tipo_registro', value);

  String? get origem => getField<String>('origem');
  set origem(String? value) => setField<String>('origem', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  String? get audioPath => getField<String>('audio_path');
  set audioPath(String? value) => setField<String>('audio_path', value);

  String? get imagemPath => getField<String>('imagem_path');
  set imagemPath(String? value) => setField<String>('imagem_path', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
