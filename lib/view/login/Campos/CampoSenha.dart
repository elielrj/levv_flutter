import 'package:flutter/material.dart';
import 'package:levv/controller/TelaLoginController.dart';

class CampoSenha extends StatefulWidget {
  const CampoSenha({required TelaLoginController this.controller,Key? key})
      : super(key: key);

  final TelaLoginController controller;

  @override
  State<CampoSenha> createState() => _CampoSenhaState();
}

class _CampoSenhaState extends State<CampoSenha> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: TextField(
          controller: widget.controller.senha,
          keyboardType: TextInputType.visiblePassword,
          obscureText: !widget.controller.senhaVisivel,
          decoration: InputDecoration(
            counterText: widget.controller.counterTextSenha,
            labelText: "Senha",
            labelStyle: const TextStyle(
                backgroundColor: Colors.white, color: Colors.black),

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black12, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.green, width: 2)),
            fillColor: Colors.white,
            filled: true,
            //errorText: "Senha incorreta",
            suffixIcon: IconButton(
                icon: widget.controller.senhaVisivel
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () =>
                    //todo inserir um setState na visibilidade da senha
                    setState(() =>
                        widget.controller.mudarStatusDaVisibilidadeDaSenha())),
          ),
          maxLength: 100,
          style: const TextStyle(fontSize: 18),
          onSubmitted: (value) async => await widget.controller.logar(),
        ),
      ),
    );
  }
}
