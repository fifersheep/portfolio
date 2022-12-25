# portfolio [![GitHub](https://img.shields.io/github/license/fifersheep/portfolio?color=blue)](https://github.com/fifersheep/portfolio/blob/main/LICENSE.md) [![GitHub](https://img.shields.io/badge/made%20with-Flutter-027dfd)](https://flutter.dev/) [![Netlify Status](https://api.netlify.com/api/v1/badges/8a9672c7-ef4e-41eb-abf8-7f6dd57936b6/deploy-status)](https://app.netlify.com/sites/fifersheep-portfolio/deploys)

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
