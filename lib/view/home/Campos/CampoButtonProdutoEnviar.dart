import 'package:flutter/material.dart';
import 'package:levv/view/enviar/TelaEnviar.dart';



class CampoButtonProdutoEnviar extends StatelessWidget {
  const CampoButtonProdutoEnviar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
