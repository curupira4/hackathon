import '../database.dart';

class DispositivosTable extends SupabaseTable<DispositivosRow> {
  @override
  String get tableName => 'dispositivos';

  @override
  DispositivosRow createRow(Map<String, dynamic> data) => DispositivosRow(data);
}

class DispositivosRow extends SupabaseDataRow {
  DispositivosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DispositivosTable();

  String get deviceId => getField<String>('device_id')!;
  set deviceId(String value) => setField<String>('device_id', value);

  String? get tipoDispositivo => getField<String>('tipo_dispositivo');
  set tipoDispositivo(String? value) =>
      setField<String>('tipo_dispositivo', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get ultimoPing => getField<DateTime>('ultimo_ping');
  set ultimoPing(DateTime? value) => setField<DateTime>('ultimo_ping', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
