/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  distDir: ".next",
  eslint: {
    dirs: ["."],
    ignoreDuringBuilds: true,
  },
  images: {
    // domains: [""], // Uncomment and specify the domains if needed
    unoptimized: true,
  },
  webpack(config) {
    config.module.rules.push({
      test: /\.svg$/,
      use: ["@svgr/webpack"],
    });

    return config;
  },
};

export default nextConfig;
