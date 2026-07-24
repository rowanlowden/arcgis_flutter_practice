# ArcGIS Flutter Practice

This repository is a Flutter sandbox for iterating on ArcGIS integration.

## Current Status

- Base Flutter app is running successfully.
- ArcGIS SDK integration is the next step.
- A previous attempt with `arcgis_maps: 300.0.0+4935` failed under the current Android toolchain setup (AGP 9.0.1 + Kotlin 2.3.20), so migration work is being retried from a clean baseline.

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

1. Add ArcGIS Flutter SDK dependency in `pubspec.yaml`.
2. Configure authentication/API key in `lib/secrets.dart`.
3. Replace the sample UI in `lib/main.dart` with a minimal ArcGIS map view.
4. Validate Android and iOS platform setup requirements for the SDK.
5. Run on emulator/device and verify map rendering.

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
