import '../database.dart';

class MedicoesTable extends SupabaseTable<MedicoesRow> {
  @override
  String get tableName => 'medicoes';

  @override
  MedicoesRow createRow(Map<String, dynamic> data) => MedicoesRow(data);
}

class MedicoesRow extends SupabaseDataRow {
  MedicoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicoesTable();

  int get medicaoId => getField<int>('medicao_id')!;
  set medicaoId(int value) => setField<int>('medicao_id', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  int? get valorInt => getField<int>('valor_int');
  set valorInt(int? value) => setField<int>('valor_int', value);

  double? get valorFloat => getField<double>('valor_float');
  set valorFloat(double? value) => setField<double>('valor_float', value);

  bool? get valorBool => getField<bool>('valor_bool');
  set valorBool(bool? value) => setField<bool>('valor_bool', value);

  String? get valorTexto => getField<String>('valor_texto');
  set valorTexto(String? value) => setField<String>('valor_texto', value);

  String? get valorBlob => getField<String>('valor_blob');
  set valorBlob(String? value) => setField<String>('valor_blob', value);

  String? get pathArquivo => getField<String>('path_arquivo');
  set pathArquivo(String? value) => setField<String>('path_arquivo', value);

  dynamic get rawJson => getField<dynamic>('raw_json');
  set rawJson(dynamic value) => setField<dynamic>('raw_json', value);
}
