import 'package:flutter/material.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';
import 'package:levv/view/frontend/ImageLevv.dart';
import 'package:levv/view/frontend/RouteLevv.dart';
import 'package:levv/view/frontend/TextLevv.dart';
import '../enviar/TelaEnviar.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

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
          children: const [
            Icon(Icons.format_align_justify),
            SizedBox(
              width: 10,
            ),
            Text(TextLevv.NOME_DO_APP),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        actions: const [
          Icon(Icons.apps),
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
              children:  [
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
                      onPressed: () => (context){} //todo ir p/ a tela entregar
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child:  Container(
                    width: 400,
                    height: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(32),
                          shadowColor: Colors.black,
                          elevation: 3,
                          primary: Colors.white),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TelaEnviar())),
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
                      onPressed: () => Navigator.pushNamed(context,
                          RouteLevv.TELA_ACOMPANHAR,
                    ),
                  ),
                ),
                )],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        elevation: 5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        onPressed: () => Navigator.pushNamed(context, RouteLevv.TELA_ENVIAR_PEDIDO),
      ),
    );
  }
}
