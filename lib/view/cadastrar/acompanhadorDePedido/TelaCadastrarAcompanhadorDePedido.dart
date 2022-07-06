
import 'package:flutter/material.dart';
import 'package:levv/controller/usuario/UsuarioController.dart';


class TelaCadastrarAcompanhadorDePedido extends StatefulWidget {
  const TelaCadastrarAcompanhadorDePedido({Key? key}) : super(key: key);

  @override
  State<TelaCadastrarAcompanhadorDePedido> createState() => _TelaCadastrarAcompanhadorDePedidoState();
}

class _TelaCadastrarAcompanhadorDePedidoState extends State<TelaCadastrarAcompanhadorDePedido> {

  final TextEditingController _controller = TextEditingController();

  final UsuarioController _usuarioController = UsuarioController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                counterText: _controller.text.isEmpty
                    ? "0 caracter"
                    : _controller.text.length.toString() + " caracteres",
                labelText: "Phone",
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
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),
                padding: EdgeInsets.all(0),
                minimumSize: Size(180, 65),
                elevation: 2,
                primary: Colors.black,
                alignment: Alignment.center,
              ),
                onPressed: () async => (){
                  _usuarioController
                      .criarUsuarioComTelefone(
                      celular: _controller.text.toString()
                  );
                 },
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
                      child: Text("Login"),
                    ),
                  ],
                ),
            ),

          ],
        ),
      ),
    );
  }
}
