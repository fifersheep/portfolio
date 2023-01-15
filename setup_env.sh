#!/bin/bash
echo SUPABASE_URL=$SUPABASE_URL >> .env
echo SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY >> .env
echo -e "<script>(function () {document.write('<base href=\"' + document.location.pathname + '\" />');}());</script>\n$(cat build/web/index.html)" > build/web/index.html