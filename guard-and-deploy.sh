#!/usr/bin/env bash
set -euo pipefail

f="src/app/globals.css"

# Require the three Tailwind directives (each on its own line) AND a @layer base block
if ! grep -q '^@tailwind base;$'        "$f" || \
   ! grep -q '^@tailwind components;$'   "$f" || \
   ! grep -q '^@tailwind utilities;$'    "$f" || \
   ! grep -q '@layer base'               "$f"; then
  echo "❌ globals.css has unexpected content. Aborting deploy."
  exit 1
fi

npm run build
firebase deploy --only hosting
