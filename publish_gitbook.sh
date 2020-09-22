# install the plugins and build the static site
gitbook install && gitbook build
# checkout to the gh-pages branch
git checkout gh-pages

git rm --cached -r .
git clean -df
rm -rf *~
echo "*~" > .gitignore
echo "_book" >> .gitignore
git add .gitignore

cp -r _book/* .
git add .
git commit -m "Publish book"
# checkout to the master branch
git checkout master