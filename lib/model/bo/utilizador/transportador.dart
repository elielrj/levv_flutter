import 'package:levv/model/bo/arquivo/arquivo.dart';
import 'package:levv/model/bo/pedido/pedido.dart';
import 'package:levv/model/bo/utilizador/cliente.dart';
import 'package:levv/model/bo/veiculo/veiculo.dart';
import '../endereco/endereco.dart';
import '../usuario/celular.dart';
import '../usuario/perfil/perfil.dart';

class Transportador extends Cliente {
  bool transportadorEstaAprovado;
  String numeroRegistroDeDocumento;
  List<Pedido>? pedidosTransportados;
  Veiculo veiculo;
  Arquivo identificacao;

  Transportador(
      Perfil perfil,
      Celular celular,
      String nome,
      String sobrenome,
      String cpf,
      DateTime nascimento,
      Endereco enderecoCasa,
      Endereco enderecoTrabalho,
      this.transportadorEstaAprovado,
      this.numeroRegistroDeDocumento,
      this.pedidosTransportados,
      this.veiculo,
      this.identificacao)
      : super(perfil, celular, nome, sobrenome, cpf, nascimento, enderecoCasa,
            enderecoTrabalho);
}
