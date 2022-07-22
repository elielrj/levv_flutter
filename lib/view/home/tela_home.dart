import 'package:flutter/material.dart';
import 'package:levv/model/bo/usuario/usuario.dart';
import 'package:levv/view/frontend/colors_levv.dart';
import 'package:levv/view/frontend/image_levv.dart';
import 'package:levv/view/frontend/route_levv.dart';
import 'package:levv/view/frontend/text_levv.dart';


class TelaHome extends StatefulWidget {
  const TelaHome({Key? key, required this.usuario}) : super(key: key);

  final Usuario usuario;

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLevv.FUNDO,
      appBar: AppBar(
        title: Row(
          children: [
            const Text(TextLevv.NOME_DO_APP + ": "),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.admin_panel_settings),
            Text(widget.usuario.tipoDeUsuario.exibirPerfil()),
          ],
        ),
        actions: const [
          Icon(Icons.build),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 57),
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      ImageLevv.LOGO_DO_APP_LEVV,
                      width: 90,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(32),
                          shadowColor: Colors.black,
                          elevation: 3,
                          primary: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(ImageLevv.TRACK_DELIVERY, height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                TextLevv.TITULO_ACOMPANHAR,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1.4,
                                    wordSpacing: 3),
                              ),
                              Text(
                                TextLevv.SUB_TITULO_ACOMPANHAR,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      onPressed: () => _navegarParaTelaAcompanhar(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(32),
                          shadowColor: Colors.black,
                          elevation: 3,
                          primary: Colors.white),
                      onPressed: () => _navegarParaTelaEnviar(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(ImageLevv.SEND_PRODUCT, height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                TextLevv.TITULO_ENVIAR,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1.4,
                                    wordSpacing: 3),
                              ),
                              Text(
                                TextLevv.SUB_TITULO_ENVIAR,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 400,
                    height: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(32),
                            shadowColor: Colors.black,
                            elevation: 3,
                            primary: Colors.white),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(ImageLevv.MOTO_DELIVERY, height: 40),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  TextLevv.TITULO_ENTREGAR,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18,
                                      letterSpacing: 1.4,
                                      wordSpacing: 3),
                                ),
                                Text(
                                  TextLevv.SUB_TITULO_ENTREGAR,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        onPressed: () => _navegarParaTelaEntregar()),
                  ),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        elevation: 5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        onPressed: () => _navegarParaTelaEnviar(),
      ),
    );
  }

  _navegarParaTelaEnviar() {
    Navigator.pushNamed(context, RouteLevv.TELA_ENVIAR);
  }

  _navegarParaTelaAcompanhar() {
    Navigator.pushNamed(context, RouteLevv.TELA_ACOMPANHAR);
  }

  _navegarParaTelaEntregar() {
    Navigator.pushNamed(context, RouteLevv.TELA_ENTREGAR);
  }
}
