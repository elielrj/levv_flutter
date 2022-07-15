
import 'package:levv/model/bo/arquivo/Arquivo.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaFisica.dart';
import 'package:levv/model/bo/veiculo/Veiculo.dart';

import '../usuario/TipoDeUsuario.dart';

class Transportador extends PessoaFisica {

  late bool _transportadorEstaAprovado;
  late String _numeroRegistroDeDocumento;

  late List<Pedido> _pedidosTransportados;

  late Veiculo _veiculo;

  late Arquivo _identificacao;

  bool get transportadorEstaAprovado => _transportadorEstaAprovado;

  set transportadorEstaAprovado(bool value) {
    _transportadorEstaAprovado = value;
  }

  String get numeroRegistroDeDocumento => _numeroRegistroDeDocumento;

  set numeroRegistroDeDocumento(String value) {
    _numeroRegistroDeDocumento = value;
  }

  List<Pedido> get pedidosTransportados => _pedidosTransportados;

  set pedidosTransportados(List<Pedido> value) {
    _pedidosTransportados = value;
  }

  Veiculo get veiculo => _veiculo;

  set veiculo(Veiculo value) {
    _veiculo = value;
  }

  Arquivo get identificacao => _identificacao;

  set identificacao(Arquivo value) {
    _identificacao = value;
  }
}

class TransportadorBuilder{
  static final Transportador _transportador = Transportador();

  TransportadorBuilder(){
    _transportador.nome = "";
    _transportador.sobrenome = "";
    _transportador.cpf = "";
    _transportador.nascimento = DateTime.now();
    _transportador.tipoDeUsuario = TipoDeUsuarioBuilder().doTipo(TipoDeUsuario.TRANSPORTADOR).create();

    _transportador.transportadorEstaAprovado = false;
    _transportador.numeroRegistroDeDocumento = "";
    List<Pedido> pedidos = [];
    _transportador.pedidosTransportados = pedidos;
    _transportador.veiculo = VeiculoBuilder().create();
    _transportador.identificacao = ArquivoBuilder().create();

    _transportador.enderecoCasa = Endereco.VAZIO;
    _transportador.enderecoTrabalho = Endereco.VAZIO;
    List<Endereco> listaDeEnderecos = [Endereco.VAZIO];
    _transportador.enderecosFavoritos = listaDeEnderecos;
  }

  TransportadorBuilder comNome(String nome){
    _transportador.nome = nome;
    return this;
  }

  TransportadorBuilder comSobrenome(String sobrenome){
    _transportador.sobrenome = sobrenome;
    return this;
  }

  TransportadorBuilder comCpf(String cpf){
    _transportador.cpf = cpf;
    return this;
  }

  TransportadorBuilder comDataDeNascimento(DateTime dateTime){
    _transportador.nascimento = dateTime;
    return this;
  }

  TransportadorBuilder transportadorAprovado(bool status){
    _transportador.transportadorEstaAprovado= status;
    return this;
  }

  Transportador create(){
    return _transportador;
  }
}