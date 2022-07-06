import 'package:flutter/material.dart';
import 'package:levv/view/frontend/ColorsLevv.dart';
import '../acompanhar/TelaAcompanhar.dart';
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
            Text("LEVV"),
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
                      "imagens/logo_levv.png",
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
                          Image.asset("imagens/icon_motocycle_delivery.png", height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "ENTREGAR PRODUTO",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1.4,
                                    wordSpacing: 3),
                              ),
                              Text(
                                "Envie e receba seus produtos",
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
                          Image.asset("imagens/icon_send_product.png", height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "ENVIAR PRODUTO",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1.4,
                                    wordSpacing: 3),
                              ),
                              Text(
                                "Envie e receba seus produtos",
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
                          Image.asset("imagens/icon_track_delivery.png", height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "ACOMPANHAR ENTREGA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                    letterSpacing: 1.4,
                                    wordSpacing: 3),
                              ),
                              Text(
                                "xxxxx-- acompanhar ou enviar????-- Envie e receba seus produtos",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TelaAcompanhar())),
                    ),
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
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TelaEnviar())),
      ),
    );
  }
}
