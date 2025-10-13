# darter - dart starter

A Starter fo Flutter project.

## Getting Started

- Replace all `su.zor.darter` by own domain like `com.your-org.your-app`
- Replace all `su.zor` by `com.your-org`
- Install dependencies

 ```shell
flutter doctor
flutter pub get
```
- Edit path `./lib/*`

## Run dev

```shell
flutter run -d chrome
```

## Build
```shell
flutter build web

flutter build apk  --target-platform android-arm64
flutter build apk  --release  --target-platform android-arm64

flutter build linux --release --target-platform linux-x64
# or
flutter build linux --release --target-platform linux-arm64

flutter build macos --release

lutter build windows --release
```



This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)


## Open apis 
- https://nominatim.openstreetmap.org/search?format=json&q=moskow%20Red%20Square

## Development
```shell
dart pub global activate flutter_cors

dart pub global deactivate flutter_cors
```

```
-e, --enable                 Enable CORS checks
-d, --disable                Disable CORS checks
-b, --disable-banner         Disable the warning banner in Chrome
-p, --flutter-path=<path>    Flutter root path (determined automatically if not specified)
```
```shell
fluttercors --disable
fluttercors --enable
fluttercors -db -p /path/to/flutter
```