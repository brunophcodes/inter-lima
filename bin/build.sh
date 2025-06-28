#!/bin/bash

set -e

echo "--- Custom Build Script Started ---"

echo "--- Installing Project Node.js Dependencies (Yarn) ---"
# Install node_modules
yarn install --frozen-lockfile

echo "--- Building Tailwind CSS (using tailwindcss-rails gem) ---"
# Generates app/assets/builds/tailwind.css
bundle exec rake tailwindcss:build --trace

echo "--- Cleaning and Precompiling Rails Assets ---"
# Combines all assets, including the generated tailwind.css, into public/assets
bundle exec rake assets:clobber --trace
bundle exec rake assets:precompile --trace 2>&1 | tee /tmp/precompile_log.txt

echo "--- Verifying Generated Assets in public/assets ---"
ls -l public/assets/ || { echo "ERROR: public/assets directory is empty or missing after precompile!"; exit 1; }
ls -l public/assets/logo_oscuro-*.png || { echo "ERROR: logo_oscuro.png NOT FOUND in public/assets after precompile!"; exit 1; }
ls -l public/assets/tailwind-*.css || { echo "ERROR: tailwind CSS NOT FOUND in public/assets after precompile!"; exit 1; }

echo "--- Custom Build Script Complete Successfully ---"