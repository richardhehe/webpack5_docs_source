#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "自动部署"
# git push -f https://gitee.com/zhuquanyu/wepack_docs_static.git master:master

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

git push -f https://github.com/richardhehe/wepack5_docs.git main:main


cd -
rm -rf docs/.vuepress/dist

git init
git add -A
git commit -m "源码推送"
#git push -f https://gitee.com/zhuquanyu/webpack_docs.git master:master

git push -f https://github.com/richardhehe/wepack5_docs_source.git main:main

