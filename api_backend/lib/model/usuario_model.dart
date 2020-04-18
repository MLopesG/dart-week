import '../api_backend.dart';
import 'movimentacao_model.dart';

class UsuarioModel extends ManagedObject<_UsuarioModel> implements  _UsuarioModel {}

@Table(name:"usuario")
class _UsuarioModel{
    @Column(primaryKey: true, autoincrement:true)
    int id;

    @Column(unique:true)
    String login;

    @Column()
    String senha;

    ManagedSet<MovimentacaoModel> movimentacoes; /// FK
}


// aqueduct db generate -- executar model
// aqueduct db upgrade -- executar migrations no postgres