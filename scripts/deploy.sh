#!/bin/bash

flutter_version=3.7.0

if [ ! -d "flutter" ]; then
    git clone https://github.com/flutter/flutter.git
fi


cd flutter
git checkout $flutter_version
cd ..
export PATH="$PATH:`pwd`/flutter/bin"

contains_tag=$(git describe --tags | grep $flutter_version)
if [ ! contains_tag ]; then
   rm -rf flutter/bin/cache
fi

flutter pub get
flutter build web --dart-define=SUPABASE_URL=$SUPABASE_URL --dart-define=SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY
