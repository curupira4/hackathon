import '../database.dart';

class CadastroTable extends SupabaseTable<CadastroRow> {
  @override
  String get tableName => 'cadastro';

  @override
  CadastroRow createRow(Map<String, dynamic> data) => CadastroRow(data);
}

class CadastroRow extends SupabaseDataRow {
  CadastroRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadastroTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  DateTime? get dataNasc => getField<DateTime>('data_nasc');
  set dataNasc(DateTime? value) => setField<DateTime>('data_nasc', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get perfis => getField<String>('perfis');
  set perfis(String? value) => setField<String>('perfis', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
