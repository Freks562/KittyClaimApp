#!/bin/bash
set -e
rm -f ~/package-lock.json
rm -rf .firebase
node -e "let p=require('./package.json'); if(p.type!=='module'){p.type='module'; require('fs').writeFileSync('package.json', JSON.stringify(p,null,2));}"
cat > next.config.js <<'EON'
const nextConfig={output:'export',images:{unoptimized:true},eslint:{ignoreDuringBuilds:true},typescript:{ignoreBuildErrors:true}};
export default nextConfig;
EON
npm install
npx next build
firebase deploy --only hosting
