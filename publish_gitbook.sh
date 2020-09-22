# install the plugins and build the static site
gitbook install && gitbook build
# checkout to the gh-pages branch
git checkout gh-pages

cp -r _book/* .
cp -r _book/.gitbook .

echo "_book" >> .gitignore
echo "node_modules" >> .gitignore
git add .gitignore

git add .
git commit -m "Publish book"
git push origin gh-pages
# checkout to the master branch
git checkout master