import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { sentryVitePlugin } from '@sentry/vite-plugin'; // Named import

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react(), sentryVitePlugin({
    org: "jsm-x9", // Your Sentry organization
    project: "javascript-react", // Your Sentry project
    authToken: process.env.VITE_SENTRY_AUTH_TOKEN, // Using the environment variable
  }), sentryVitePlugin({
    org: "techfuture-zf",
    project: "iphone-clone"
  })],
  "scripts": {
  "upload-sourcemaps": "npx sentry-cli releases files YOUR_RELEASE_NAME upload-sourcemaps ./dist --rewrite --ext .js --ext .map"
},

  build: {
    sourcemap: true, // Ensure sourcemaps are generated for uploading to Sentry
  }
});