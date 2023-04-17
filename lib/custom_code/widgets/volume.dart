// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:volume_controller/volume_controller.dart';

class Volume extends StatefulWidget {
  const Volume({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  double _volumeListenerValue = 0;
  double _getVolume = 0;
  double _setVolumeValue = 0;

  @override
  void initState() {
    super.initState();
    // Listen to system volume change
    VolumeController().listener((volume) {
      setState(() => _volumeListenerValue = volume);
    });

    VolumeController().getVolume().then((volume) => _setVolumeValue = volume);
  }

  @override
  void dispose() {
    VolumeController().removeListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('Exemplo Plugin de Volume'),
        ),*/
        body: Column(
          children: [
            //Text('Volume actual: $_volumeListenerValue'),
            Row(
              children: [
                Text('Volume:'),
                Flexible(
                  child: Slider(
                    min: 0,
                    max: 1,
                    onChanged: (double value) {
                      setState(() {
                        _setVolumeValue = value;
                        VolumeController().setVolume(_setVolumeValue);
                      });
                    },
                    value: _setVolumeValue,
                  ),
                ),
              ],
            ),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Volume é: $_getVolume'),
                TextButton(
                  onPressed: () async {
                    _getVolume = await VolumeController().getVolume();
                    setState(() {});
                  },
                  child: Text('Obter Volume'),
                ),
              ],
            ),*/
            TextButton(
              onPressed: () => VolumeController().muteVolume(),
              child: Text('Silenciar Volume'),
            ),
            /*TextButton(
              onPressed: () => VolumeController().maxVolume(),
              child: Text('Volume Maximo'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Mostrar UI de Sistema:${VolumeController().showSystemUI}'),
                TextButton(
                  onPressed: () => setState(() => VolumeController()
                      .showSystemUI = !VolumeController().showSystemUI),
                  child: Text('Mostrar/Esconder UI'),
                )
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
