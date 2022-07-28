import 'package:levv/model/bo/usuario/celular.dart';
import 'package:levv/model/bo/usuario/usuario.dart';

import '../endereco/endereco.dart';
import '../pedido/pedido.dart';
import '../usuario/perfil/perfil.dart';

class Cliente extends Usuario {
   String nome;
   String sobrenome;
   String cpf;
   DateTime nascimento;

  Endereco? enderecoCasa;
  Endereco? enderecoTrabalho;

   Cliente(Perfil perfil,Celular celular, this.nome, this.sobrenome, this.cpf, this.nascimento,
      this.enderecoCasa, this.enderecoTrabalho) : super(perfil, celular);
}
