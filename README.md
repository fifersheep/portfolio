# portfolio

My personal portfolio

## Development

## Frontend

- Run a dev build with Chrome: `flutter run -d chrome`
- Run build runner as watcher for code generation: `flutter packages pub run build_runner watch --delete-conflicting-outputs`
- Run build runner once for code generation: `flutter packages pub run build_runner build --delete-conflicting-outputs`

### Backend

#### Install

- [Docker](https://docs.docker.com/desktop/mac/install/)
- Supabase CLI: `brew install supabase/tap/supabase`

#### Run Locally

1. Run `supabase start`

#### DB

- Create db diff: `supabase db diff --use-migra -f file_name`

## Testing

- Run all widget tests: `flutter test`
- Run a single widget test file: `flutter test test/widgets/navigation/navigation_drawer_test.dart`
