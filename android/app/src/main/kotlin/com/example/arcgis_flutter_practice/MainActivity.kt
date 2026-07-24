package com.example.arcgis_flutter_practice

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.RenderMode

class MainActivity : FlutterActivity() {
	override fun getRenderMode(): RenderMode = RenderMode.texture
}
