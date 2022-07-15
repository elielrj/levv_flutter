
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaFisica.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';

class Cliente extends PessoaFisica {

}

class ClienteBuilder{

  static final Cliente _cliente = Cliente();


  ClienteBuilder(){
    _cliente.nome = "";
    _cliente.sobrenome = "";
    _cliente.cpf = "";
    _cliente.nascimento = DateTime.now();
    _cliente.tipoDeUsuario = TipoDeUsuarioBuilder().doTipo(TipoDeUsuario.CLIENTE).create();;

    _cliente.celular = "";
    _cliente.status = false;

    _cliente.enderecoCasa = Endereco.VAZIO;
    _cliente.enderecoTrabalho = Endereco.VAZIO;
    List<Endereco> listaDeEnderecos = [Endereco.VAZIO];
    _cliente.enderecosFavoritos = listaDeEnderecos;

  }

  ClienteBuilder comCelular(String celular) {
    _cliente.celular = celular;
    return this;
  }

  ClienteBuilder comStatus(bool status) {
    _cliente.status = status;
    return this;
  }

  ClienteBuilder
  usuarioDoTipo(TipoDeUsuario tipoDeUsuario) {
    _cliente.tipoDeUsuario = tipoDeUsuario;
    return this;
  }

  ClienteBuilder comEnderecoDeCasa(Endereco endereco) {
    _cliente.enderecoCasa = endereco;
    return this;
  }

  ClienteBuilder comEnderecoDoTrabalho(Endereco endereco) {
    _cliente.enderecoTrabalho = endereco;
    return this;
  }

  ClienteBuilder comEnderecosFavoritos(List<Endereco> endereco) {
    _cliente.enderecosFavoritos = endereco;
    return this;
  }

  ClienteBuilder comListaDePedidos(List<Pedido> listaDePedidos) {
    _cliente.listaDePedidos = listaDePedidos;
    return this;
  }

  ClienteBuilder comNome(String nome) {
    _cliente.nome = nome;
    return this;
  }

  ClienteBuilder comSobrenome(String sobrenome) {
    _cliente.sobrenome = sobrenome;
    return this;
  }

  ClienteBuilder comCpf(String cpf) {
    _cliente.cpf= cpf;
    return this;
  }

  ClienteBuilder nascidoEm(DateTime dataDeNasscimento) {
    _cliente.nascimento= dataDeNasscimento;
    return this;
  }

  Cliente create() {
    return _cliente;
  }
}