#!/bin/bash
npm install
npx next build
firebase deploy --only hosting
