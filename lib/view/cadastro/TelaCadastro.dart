import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levv/helper/AppColors.dart';
import '../../helper/usuario/CriarUsuario.dart';
import '../login/TelaLogin.dart';
import '../login/Campos/CampoLogon.dart';
import 'ValidarSenhas.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerSenhaDeConfirmacao =
      TextEditingController();

  bool _senhaVisivel = false;
  bool _senhaDeConfirmacaoVisivel = false;

  @override
  void initState() {
    super.initState();

    _controllerSenha.addListener(() => setState(() {}));
    _controllerSenhaDeConfirmacao.addListener(() => setState(() {}));
    _controllerEmail.addListener(() => setState(() {}));
  }

  void _cadastrar() {
    if (ValidarSenhas.validar(
        context, _controllerSenha, _controllerSenhaDeConfirmacao)) {
      CriarUsuario.criarUsuarioComEmailESenha(context,
          _controllerEmail.text.toString(), _controllerSenha.text.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CampoLogon(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      counterText: _controllerEmail.text.isEmpty
                          ? "0 caracter"
                          : _controllerEmail.text.length.toString() +
                              " caracteres",
                      labelText: "Email",
                      labelStyle: const TextStyle(
                          backgroundColor: Colors.white, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2)),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      suffixIcon: _controllerEmail.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: const Icon(Icons.close, color: Colors.red),
                              onPressed: () => _controllerEmail.clear(),
                            ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    maxLength: 100,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerSenha,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_senhaVisivel,
                    decoration: InputDecoration(
                      counterText: _controllerSenha.text.isEmpty
                          ? "0 caracter"
                          : _controllerSenha.text.length.toString() +
                              " caracteres",
                      labelText: "Senha",
                      labelStyle: const TextStyle(
                          backgroundColor: Colors.white, color: Colors.black),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2)),
                      fillColor: Colors.white,
                      filled: true,
                      // errorText: "Senha incorreta",
                      suffixIcon: IconButton(
                          icon: _senhaVisivel
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () =>
                              setState(() => _senhaVisivel = !_senhaVisivel)),
                    ),
                    maxLength: 100,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerSenhaDeConfirmacao,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_senhaDeConfirmacaoVisivel,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2)),

                      counterText: _controllerSenhaDeConfirmacao.text.isEmpty
                          ? "0 caracter"
                          : _controllerSenhaDeConfirmacao.text.length
                                  .toString() +
                              " caracteres",
                      labelText: "Confirme a senha",
                      labelStyle: const TextStyle(
                          backgroundColor: Colors.white, color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      //errorText: "Senha incorreta",
                      suffixIcon: IconButton(
                          icon: _senhaDeConfirmacaoVisivel
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () => setState(() =>
                              _senhaDeConfirmacaoVisivel =
                                  !_senhaDeConfirmacaoVisivel)),
                    ),
                    onSubmitted: (context) => _cadastrar(),
                    maxLength: 100,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, top: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TelaLogin())),
                        child: const Text(
                          "Já é cadastrado? clique aqui!",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        padding: const EdgeInsets.all(8),
                        minimumSize: const Size(190, 65),
                        elevation: 2,
                        primary: Colors.black,
                        alignment: Alignment.center,
                      ),
                      onPressed: () => _cadastrar(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            widthFactor: 1,
                            child: Image.asset(
                              "imagens/icon_register.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Center(
                            widthFactor: 2,
                            child: Text("Cadastrar"),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        padding: const EdgeInsets.all(8),
                        minimumSize: const Size(190, 65),
                        elevation: 2,
                        primary: Colors.black,
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        _controllerEmail.clear();
                        _controllerSenha.clear();
                        _controllerSenhaDeConfirmacao.clear();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            widthFactor: 1,
                            child: Image.asset(
                              "imagens/icon_trash.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const Center(
                            widthFactor: 2,
                            child: Text("Limpar"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.APP_FUNDO,
    );
  }
}
