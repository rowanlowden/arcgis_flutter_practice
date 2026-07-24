import 'package:flutter/material.dart';
import 'package:arcgis_maps/arcgis_maps.dart';

import 'secrets.dart';

void main() {
  ArcGISEnvironment.apiKey = arcgisApiKey;
  runApp(const ArcGISPracticeApp());
}

class ArcGISPracticeApp extends StatelessWidget {
  const ArcGISPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArcGIS Flutter Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ArcGISHomePage(),
    );
  }
}

class ArcGISHomePage extends StatelessWidget {
  const ArcGISHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final map = ArcGISMap.withBasemapStyle(BasemapStyle.arcGISStreets);

    return Scaffold(
      appBar: AppBar(title: const Text('ArcGIS Map')),
      body: ArcGISMapView(
        controllerProvider: () {
          return ArcGISMapView.createController()..arcGISMap = map;
        },
      ),
    );
  }
}
