/** @type {import('next').NextConfig} */
module.exports = {
  output: 'export',          // static export for Firebase Hosting
  images: { unoptimized: true },
  devIndicators: false,      // hide Next dev indicators
};
