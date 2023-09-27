# llama_dart

**Important:**

Native assets support in Flutter MacOS, iOS, and Linux is available on the master channel behind an experimental flag : flutter config --enable-native-assets and flutter create --template=package_ffi [package name]. See [this comment](https://github.com/flutter/flutter/issues/129757#issue-1780402845) for more details.

## Description

TODO: Rewrite this README. In it's current form, it's more of a development guide for myself.

## Steps to run

The steps I have done:

1. `flutter channel master`
2. `flutter upgrade`
3. `flutter config --enable-native-assets`
4. `flutter create --template=package_ffi llama_dart`
5. `cd llama_dart`
6. `flutter pub get`
7. `flutter run`
8. `dart --enable-experiment=native-assets run ffigen --config ffigen.yaml`

In order to run ffigen, we must do that with the Dart SDK and not Flutter. This is a temporary workaround until the Flutter team has finished implementing the feature in the Flutter SDK.

## Supported use cases

Use cases that [should be supported](https://github.com/flutter/flutter/issues/129757#issue-1780402845):

- flutter run
- debug
- hot reload (1)
- hot restart (1)
- release/profile
- flutter build debug/release/profile
- flutter test / dart test
- add-2-app (e.g. flutter build macos-framework for MacOS)
- flutter run -dflutter-tester

## Coming Soon
Soon available in your local area. Jokes aside, this plugin is meant to easily integrate llama.cpp capabilities in your Flutter or Dart apps.
