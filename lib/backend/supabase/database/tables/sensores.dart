import '../database.dart';

class SensoresTable extends SupabaseTable<SensoresRow> {
  @override
  String get tableName => 'sensores';

  @override
  SensoresRow createRow(Map<String, dynamic> data) => SensoresRow(data);
}

class SensoresRow extends SupabaseDataRow {
  SensoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensoresTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  String? get deviceId => getField<String>('device_id');
  set deviceId(String? value) => setField<String>('device_id', value);

  String? get tipoSens => getField<String>('tipo_sens');
  set tipoSens(String? value) => setField<String>('tipo_sens', value);

  String? get dataType => getField<String>('data_type');
  set dataType(String? value) => setField<String>('data_type', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
