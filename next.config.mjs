/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',          // static export for Firebase Hosting
  images: { unoptimized: true },
  devIndicators: false,      // hide dev overlays
};
export default nextConfig;
