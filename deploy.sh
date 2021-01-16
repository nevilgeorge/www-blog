# !/bin/bash
# deploy.sh
# Builds and deploys changes automatically

echo "Building..."
bundle exec jekyll build
rsync -r _site/ ../nevilgeorge.github.io
cd ../nevilgeorge.github.io

echo "Deploying..."
git add .
git commit -m "deploying to prod"
git push origin master
