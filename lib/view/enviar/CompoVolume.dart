import 'package:flutter/material.dart';

import '../../model/volume/Volume.dart';

class CompoVolume extends StatefulWidget {
  const CompoVolume({Key? key}) : super(key: key);

  @override
  State<CompoVolume> createState() => _CompoVolumeState();
}

class _CompoVolumeState extends State<CompoVolume> {
  final Volume _volume = Volume();

  setSelect(var value) {
    setState(() {
      _volume.setSelectedVolume(int.parse(value.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Text("VOLUME", style: TextStyle(fontSize: 16)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset("imagens/icon_medium_volume.png", height: 15),
            Radio(
                value: Volume.VOLUME_40,
                groupValue: _volume.selectedVolume,
                onChanged: (value) => setSelect(value)),
            Text(Volume.VOLUME_40X40),
            Image.asset(
              "imagens/icon_medium_volume.png",
              height: 15,
            ),
            Radio(
                value: Volume.VOLUME_20,
                groupValue: _volume.selectedVolume,
                onChanged: (value) => setSelect(value)),
            Text(Volume.VOLUME_20X20),
            Image.asset("imagens/icon_medium_volume.png", height: 15),
            Radio(
                value: Volume.VOLUME_60,
                groupValue: _volume.selectedVolume,
                onChanged: (value) => setSelect(value)),
            Text(Volume.VOLUME_60X60),
          ]),
        ],
      ),
    );
  }
}
