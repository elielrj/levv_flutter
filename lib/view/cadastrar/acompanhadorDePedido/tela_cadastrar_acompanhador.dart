import 'package:flutter/material.dart';
import 'package:levv/model/bo/utilizador/acompanhador.dart';
import 'package:levv/view/cadastrar/acompanhadorDePedido/cadastrador_de_usuario.dart';
import 'package:levv/view/frontend/colors_levv.dart';
import 'package:levv/view/frontend/text_levv.dart';
import 'package:levv/view/home/tela_home.dart';
import '../../../model/bo/usuario/usuario.dart';
import '../../frontend/image_levv.dart';

class TelaCadastrarAcompanhador extends StatefulWidget {
  const TelaCadastrarAcompanhador({Key? key}) : super(key: key);

  @override
  State<TelaCadastrarAcompanhador> createState() =>
      _TelaCadastrarAcompanhadorState();
}

class _TelaCadastrarAcompanhadorState
    extends State<TelaCadastrarAcompanhador> {

  final TextEditingController _controller = TextEditingController();
  final CadastradorDeUsuario _cadastradorDeUsuario = CadastradorDeUsuario();
  late Usuario _usuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                ImageLevv.LOGO_DO_APP_LEVV,
                width: 90,
              ),
            ),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.phone,

              decoration: InputDecoration(
                counterText: _controller.text.isNotEmpty
                    ? "${_controller.text.length} ${TextLevv.VARIOS_CARACTERES}"
                    : "${_controller.text.length} ${TextLevv.UM_CARACTER}",
                labelText: TextLevv.CELULAR,
                labelStyle: const TextStyle(
                    backgroundColor: Colors.white, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.black12, width: 2)),
                prefixIcon: const Icon(
                  Icons.phone_iphone,
                  color: Colors.black,
                ),
                suffixIcon: _controller.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        onPressed: () => _controller.clear(),
                        icon: const Icon(Icons.close, color: Colors.red),
                      ),
                fillColor: Colors.white,
                filled: true,
              ),
              maxLength: 11,
              style: const TextStyle(fontSize: 18),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                padding: const EdgeInsets.all(0),
                minimumSize: const Size(180, 65),
                elevation: 2,
                primary: Colors.black,
                alignment: Alignment.center,
              ),
              onPressed: () async => _controller.text.isNotEmpty
                  ? _cadastrar()
                  : _exibirAvisoDeErroAoCadastrar(TextLevv.NUMERO_CELULAR_INVALIDO),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    ImageLevv.REGISTER,
                    width: 20,
                    height: 20,
                  ),
                  const Text(TextLevv.CADASTRAR)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //1
  Future<void> _cadastrar() async {
    bool cadastrado =
        await _cadastradorDeUsuario.cadastrar(_controller.text.toString());

    if (cadastrado) {
      await _criarUsuario();
      await _navegarParaTelaHome();
    } else {
      _exibirAvisoDeErroAoCadastrar(TextLevv.ERRO_CRIAR_USUARIO);
      //todo exibir o motivo do erro
    }
  }

  //2
  Future<void> _criarUsuario() async {
    _usuario = AcompanhadorDePedidoBuilder()
        .comCelular(_controller.text.toString())
        .create();
  }

  //3
  _navegarParaTelaHome() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context) => TelaHome(usuario: _usuario)
        )
    );
  }

  //4
  _exibirAvisoDeErroAoCadastrar(String msg) {
    //todo exibir mensagem de erro ao tentar cadastrar
  }
}
