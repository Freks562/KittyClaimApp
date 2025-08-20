#!/bin/bash
set -e
f="src/app/globals.css"

# Guard: require the three Tailwind directives (each on its own line) AND at least one @layer base block
grep -Fqx '@tailwind base;' "$f"
grep -Fqx '@tailwind components;' "$f"
grep -Fqx '@tailwind utilities;' "$f"
grep -q '@layer base' "$f"

npm run build
firebase deploy --only hosting
