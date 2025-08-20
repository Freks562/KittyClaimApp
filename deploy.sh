#!/bin/bash
npm install
npx next build
npx next export
firebase deploy --only hosting
