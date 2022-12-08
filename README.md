# portfolio

My personal portfolio

## Development

- Run a dev build with Chrome: `flutter run -d chrome`
- Run build runner as watcher for code generation: `flutter packages pub run build_runner watch --delete-conflicting-outputs`
- Run build runner once for code generation: `flutter packages pub run build_runner build --delete-conflicting-outputs`

## Testing

- Run all widget tests: `flutter test`
- Run a single widget test file: `flutter test test/widgets/navigation/navigation_drawer_test.dart`

## Source Control

- Git hooks configured for pre-commit and pre-push. To bypass, append: `--no-verify`

## Releasing

1. Generate build: `flutter build web`
