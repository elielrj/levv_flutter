
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaJuridica.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';

class Lojista extends PessoaJuridica {

}

class LojistaBuilder{

  static final Lojista _lojista = Lojista();


  LojistaBuilder(){
    _lojista.cnpj = "";
    _lojista.nomeFantasiaDaEmpresa = "";
    _lojista.nomeDaEmpresaDaEmpresa = "";

    _lojista.tipoDeUsuario = TipoDeUsuarioBuilder().doTipo(TipoDeUsuario.LOJISTA).create();
    _lojista.enderecoCasa = Endereco.VAZIO;
    _lojista.enderecoTrabalho = Endereco.VAZIO;
    List<Endereco> listaDeEnderecos = [Endereco.VAZIO];
    _lojista.enderecosFavoritos = listaDeEnderecos;
    List<Pedido> listaDePedidos = [];
    _lojista.listaDePedidos = listaDePedidos;

  }

  LojistaBuilder comCelular(String celular) {
    _lojista.celular = celular;
    return this;
  }

  LojistaBuilder comStatus(bool status) {
    _lojista.status = status;
    return this;
  }

  LojistaBuilder
  usuarioDoTipo(TipoDeUsuario tipoDeUsuario) {
    _lojista.tipoDeUsuario = tipoDeUsuario;
    return this;
  }

  LojistaBuilder comEnderecoDeCasa(Endereco endereco) {
    _lojista.enderecoCasa = endereco;
    return this;
  }

  LojistaBuilder comEnderecoDoTrabalho(Endereco endereco) {
    _lojista.enderecoTrabalho = endereco;
    return this;
  }

  LojistaBuilder comEnderecosFavoritos(List<Endereco> endereco) {
    _lojista.enderecosFavoritos = endereco;
    return this;
  }

  LojistaBuilder comListaDePedidos(List<Pedido> listaDePedidos) {
    _lojista.listaDePedidos = listaDePedidos;
    return this;
  }

  LojistaBuilder comCnpj(String cnpj) {
    _lojista.cnpj = cnpj;
    return this;
  }

  LojistaBuilder comNomeFantasia(String nomeFantasia) {
    _lojista.nomeFantasiaDaEmpresa = nomeFantasia;
    return this;
  }

  LojistaBuilder comNomeDaEmpresa(String nomeDaEmpresa) {
    _lojista.nomeDaEmpresaDaEmpresa= nomeDaEmpresa;
    return this;
  }

  Lojista create() {
    return _lojista;
  }
}