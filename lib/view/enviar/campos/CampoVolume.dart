import 'package:flutter/material.dart';
import 'package:levv/view/enviar/campos/volume/Volume.dart';



class CampoVolume extends StatefulWidget {
  const CampoVolume({Key? key}) : super(key: key);

  @override
  State<CampoVolume> createState() => _CampoVolumeState();
}

class _CampoVolumeState extends State<CampoVolume> {
  final Volume _volume = Volume();

  setSelect(var value) {
    setState(() {
      _volume.setSelectedVolume(int.parse(value.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const Text("VOLUME", style: TextStyle(fontSize: 16)),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Image.asset("imagens/icon_medium_volume.png", height: 15),
                Radio(
                    value: Volume.VOLUME_40,
                    groupValue: _volume.selectedVolume,
                    onChanged: (value) => setSelect(value)),
                Text(Volume.VOLUME_40X40),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  "imagens/icon_medium_volume.png",
                  height: 15,
                ),
                Radio(
                    value: Volume.VOLUME_20,
                    groupValue: _volume.selectedVolume,
                    onChanged: (value) => setSelect(value)),
                Text(Volume.VOLUME_20X20),
              ],
            ),
            Row(
              children: [
                Image.asset("imagens/icon_medium_volume.png", height: 15),
                Radio(
                    value: Volume.VOLUME_60,
                    groupValue: _volume.selectedVolume,
                    onChanged: (value) => setSelect(value)),
                Text(Volume.VOLUME_60X60),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
