
import 'package:levv/model/bo/endereco/Endereco.dart';
import 'package:levv/model/bo/pedido/Pedido.dart';
import 'package:levv/model/bo/pessoa/PessoaJuridica.dart';
import 'package:levv/model/bo/usuario/TipoDeUsuario.dart';

class Lojista extends PessoaJuridica {
  Lojista(
      {required String celuar,
      required bool status,
      required TipoDeUsuario tipoDeUsuario,
      required Endereco enderecoCasa,
      required Endereco enderecoTrabalho,
      required List<Endereco> enderecosFavoritos,
      required List<Pedido> listaDePedidos,
      required String cnpj,
      required String nomeFantasiaDaEmpresa,
      required String nomeDaEmpresaDaEmpresa})
      : super(
            celuar: celuar,
            status: status,
            tipoDeUsuario: tipoDeUsuario,
            enderecoCasa: enderecoCasa,
            enderecoTrabalho: enderecoTrabalho,
            enderecosFavoritos: enderecosFavoritos,
            listaDePedidos: listaDePedidos,
            cnpj: cnpj,
            nomeFantasiaDaEmpresa: nomeFantasiaDaEmpresa,
            nomeDaEmpresaDaEmpresa: nomeDaEmpresaDaEmpresa);
}
