# flarter - Flutter starter

A Starter fo Flutter project.

## Getting Started

- run command
```shell
flutter pub run rename --bundleId com.your-org.your-app`
```
- Rename directories  (`su/zor/flarter/` -> `com/your-org/your-app/`) 
`./android/app/src/main/kotlin/su/zor/flarter/`
by 
`./android/app/src/main/kotlin/com/your-org/your-app/`
- Replace all `su.zor.flarter` by own domain like `com.your-org.your-app`
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
flutter run -d linux
```

## Build

### web
```shell
flutter build web
```

### android arm64
```shell
flutter build apk  --release  --target-platform android-arm64


```

### linux x64
```shell
flutter build linux --release --target-platform linux-x64
# -> ./build/linux/x64/release/bundle/*
# -> ./build/linux/x64/release/bundle/flarter
```

### linux arm64
```shell
flutter build linux --release --target-platform linux-arm64
# -> ./build/linux/arm64/release/bundle/*
# -> ./build/linux/arm64/release/bundle/flarter
```

### macos & windows
```shell
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


### Flutter CORS
```shell
dart pub global activate flutter_cors

dart pub global deactivate flutter_cors
```

