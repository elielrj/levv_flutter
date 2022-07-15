
import 'package:flutter/cupertino.dart';
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaFisica.dart';

import '../usuario/TipoDeUsuario.dart';

class Administrador extends PessoaFisica {



}
class AdministradorBuilder{

  static final Administrador _administrador = Administrador();

  AdministradorBuilder(){
    _administrador.nome = "";
    _administrador.sobrenome = "";
    _administrador.cpf = "";
    _administrador.nascimento = DateTime.now();
    _administrador.tipoDeUsuario = TipoDeUsuarioBuilder().doTipo(TipoDeUsuario.ADMINISTRADOR).create();

    _administrador.celular = "";
    _administrador.status = false;

    _administrador.enderecoCasa = Endereco.VAZIO;
    _administrador.enderecoTrabalho = Endereco.VAZIO;
    List<Endereco> listaDeEnderecos = [Endereco.VAZIO];
    _administrador.enderecosFavoritos = listaDeEnderecos;

  }

  AdministradorBuilder comCelular(String celular) {
    _administrador.celular = celular;
    return this;
  }

  AdministradorBuilder comStatus(bool status) {
    _administrador.status = status;
    return this;
  }

  AdministradorBuilder
  usuarioDoTipo(TipoDeUsuario tipoDeUsuario) {
    _administrador.tipoDeUsuario = tipoDeUsuario;
    return this;
  }

  AdministradorBuilder comEnderecoDeCasa(Endereco endereco) {
    _administrador.enderecoCasa = endereco;
    return this;
  }

  AdministradorBuilder comEnderecoDoTrabalho(Endereco endereco) {
    _administrador.enderecoTrabalho = endereco;
    return this;
  }

  AdministradorBuilder comEnderecosFavoritos(List<Endereco> endereco) {
    _administrador.enderecosFavoritos = endereco;
    return this;
  }

  AdministradorBuilder comListaDePedidos(List<Pedido> listaDePedidos) {
    _administrador.listaDePedidos = listaDePedidos;
    return this;
  }

  AdministradorBuilder comNome(String nome) {
    _administrador.nome = nome;
    return this;
  }

  AdministradorBuilder comSobrenome(String sobrenome) {
    _administrador.sobrenome = sobrenome;
    return this;
  }

  AdministradorBuilder comCpf(String cpf) {
    _administrador.cpf= cpf;
    return this;
  }

  AdministradorBuilder nascidoEm(DateTime dataDeNasscimento) {
    _administrador.nascimento= dataDeNasscimento;
    return this;
  }

  Administrador create() {
    return _administrador;
  }
}