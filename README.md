# llama_dart

**Important:**

Native assets support in Flutter MacOS, iOS, and Linux is available on the master channel behind an experimental flag: `flutter config --enable-native-assets` and `flutter create --template=package_ffi [package name]`. See [this comment](https://github.com/flutter/flutter/issues/129757#issue-1780402845) for more details.

## Description

**llama_dart** is an experimental Flutter plugin designed to seamlessly integrate the capabilities of llama.cpp into your Flutter or Dart apps. Please note that this package is currently in development and may not be fully functional.

## Known Issue

**Important:** Native assets support in Flutter MacOS, iOS, and Linux is available on the master channel behind an experimental flag: `flutter config --enable-native-assets` and `flutter create --template=package_ffi [package name]`. See [this comment](https://github.com/flutter/flutter/issues/129757#issue-1780402845) for more details.

If you encounter the error 'Couldn't resolve native function 'llama_context_default_params' on macOS ARM64, please refer to [Issue #2](https://github.com/BrutalCoding/llama_dart/issues/2) for details and updates. Contributions and insights are welcome.

## Steps to Run

Here are the steps to run **llama_dart**:

1. Switch to the master channel: `flutter channel master`
2. Upgrade Flutter: `flutter upgrade`
3. Enable native assets: `flutter config --enable-native-assets`
4. Create a package using the `ffi` template: `flutter create --template=package_ffi llama_dart`
5. Navigate to the project folder: `cd llama_dart`
6. Get dependencies: `flutter pub get`
7. Run the app: `flutter run`
8. Generate bindings using Dart SDK (temporary workaround): `dart --enable-experiment=native-assets run ffigen --config ffigen.yaml`

Please note that step 8 currently requires using the Dart SDK instead of Flutter until the Flutter team completes implementing the feature in the Flutter SDK.

## Supported Use Cases

**llama_dart** aims to support various use cases, including:

- Running the app with `flutter run`
- Debugging
- Hot reload (1)
- Hot restart (1)
- Release/profile builds
- Building debug/release/profile builds with `flutter build`
- Running tests with `flutter test` or `dart test`
- Adding to an app (e.g., `flutter build macos-framework` for MacOS)
- Running with the Flutter tester: `flutter run -dflutter-tester`

Please note that the plugin is still under development, and not all use cases may be fully supported at this time.

## Platform Support

- [ ] MacOS
- [ ] Windows
- [ ] Linux
- [ ] Android
- [ ] iOS

**Note:** This list represents our intended platform support after addressing the initial issues on MacOS ARM64. Support for other platforms may be added in the future.

## Coming Soon

Stay tuned for updates! **llama_dart** is meant to make it easier to incorporate llama.cpp capabilities into your Flutter or Dart apps, and we're actively working on improving its functionality.

If you encounter any issues or have additional information that could help, please feel free to contribute to the discussion. Your insights and experiences are valuable in addressing this problem effectively.
