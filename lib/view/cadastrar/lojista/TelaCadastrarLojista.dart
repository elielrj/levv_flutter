
import 'package:flutter/material.dart';
import 'package:levv/view/frontend/colors_levv.dart';


class TelaCadastrarLojista extends StatefulWidget {
  const TelaCadastrarLojista({Key? key}) : super(key: key);

  @override
  State<TelaCadastrarLojista> createState() => _TelaCadastrarLojistaState();
}

class _TelaCadastrarLojistaState extends State<TelaCadastrarLojista> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSobreome = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controllerNome.addListener(() => setState(() {}));
    _controllerSobreome.addListener(() => setState(() {}));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:const  EdgeInsets.only(bottom: 8),
                child: TextField(
                  onTap: () {},
                  controller: _controllerNome,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    counterText: _controllerNome.text.isEmpty
                        ? "0 caracter"
                        : _controllerNome.text.length.toString() +
                            " caracteres",
                    labelText: "Nome",
                    labelStyle: const TextStyle(
                        backgroundColor: Colors.white, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const   BorderSide(color: Colors.black12, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const  BorderSide(color: Colors.green, width: 2)),
                    prefixIcon:const  Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    suffixIcon: _controllerNome.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon:const  Icon(Icons.close, color: Colors.red),
                            onPressed: () => _controllerNome.clear(),
                          ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  maxLength: 100,
                  style:const  TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding:const  EdgeInsets.only(bottom: 8),
                child: TextField(
                  controller: _controllerSobreome,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    counterText: _controllerSobreome.text.isEmpty
                        ? "0 caracter"
                        : _controllerSobreome.text.length.toString() +
                            " caracteres",
                    labelText: "Sobrenome",
                    labelStyle: const TextStyle(
                        backgroundColor: Colors.white, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const  BorderSide(color: Colors.black12, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.green, width: 2)),
                    prefixIcon:const  Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    suffixIcon: _controllerSobreome.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: const Icon(Icons.close, color: Colors.red),
                            onPressed: () => _controllerSobreome.clear(),
                          ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  maxLength: 100,
                  style:const  TextStyle(fontSize: 18),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                      padding:const  EdgeInsets.all(8),
                      minimumSize: const Size(190, 65),
                      elevation: 2,
                      primary: Colors.black,
                      alignment: Alignment.center,
                    ),
                    onPressed: () async {
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
                          child: Text("Cadastrar"),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      textStyle:const  TextStyle(color: Colors.black, fontSize: 18),
                      padding:const  EdgeInsets.all(8),
                      minimumSize:const  Size(190, 65),
                      elevation: 2,
                      primary: Colors.black,
                      alignment: Alignment.center,
                    ),
                    onPressed: () {
                      _controllerNome.clear();
                      _controllerSobreome.clear();
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
                        const  Center(
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
      backgroundColor: ColorsLevv.FUNDO,
    );
  }
}
