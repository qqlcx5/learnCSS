# 确保脚本抛出遇到的错误
set -e
git add -A
git commit -m 'deploy'
git push git@github.com:qqlcx5/learnCSS.git master
cd -
