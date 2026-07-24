# ArcGIS Flutter Practice

This repository is a Flutter sandbox for iterating on ArcGIS integration.

## Current Status

- ArcGIS Flutter SDK is integrated (`arcgis_maps: 300.0.0+4935`).
- The app entrypoint uses `ArcGISMapView` with `controllerProvider` in `lib/main.dart`.
- Android build settings are pinned for compatibility with this setup.

## Current Android Build Stack

- Gradle wrapper: `8.14` in `android/gradle/wrapper/gradle-wrapper.properties`
- Android Gradle Plugin: `8.11.1` in `android/settings.gradle.kts`
- Kotlin Android plugin: `2.2.20` in `android/settings.gradle.kts`
- Android `minSdk`: `28` in `android/app/build.gradle.kts` (required by ArcGIS Flutter SDK)

## Prerequisites

- Flutter SDK (stable channel)
- Dart SDK (compatible with Flutter)
- Android Studio / Xcode (depending on target platform)

Check your toolchain:

```bash
flutter doctor -v
```

## Run The Current App

```bash
flutter pub get
flutter run
```

## ArcGIS Migration Plan

1. Keep the API key in `lib/secrets.dart` (local only).
2. Verify Android emulator/device readiness before install attempts.
3. Add map layers, operational data, and interactions incrementally.
4. Run and validate after each mapping feature change.

## Secrets

`lib/secrets.dart` currently contains a placeholder:

```dart
const String arcgisApiKey = "YOUR_API_KEY";
```

Replace it with your real ArcGIS API key before testing map services.

## Useful Commands

```bash
flutter analyze
flutter test
```

## Notes

- This project is intentionally small and iterative.
- Keep commits focused as the ArcGIS migration progresses.
