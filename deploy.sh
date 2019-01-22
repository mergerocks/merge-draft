#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
npm run build

git add -A
git commit -m 'deploy'

# если вы публикуете по адресу https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:a1exalexander/merge-draft.git master:gh-pages


