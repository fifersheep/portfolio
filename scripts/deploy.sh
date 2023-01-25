#!/bin/bash
if [ ! -d "flutter" ]; then
    git clone https://github.com/flutter/flutter.git
fi

cd flutter
ls -la
git checkout v3.3.9
cd ..
export PATH="$PATH:`pwd`/flutter/bin"

flutter packages get
flutter build web --dart-define=SUPABASE_URL=$SUPABASE_URL --dart-define=SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY
