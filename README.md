# My Reading Progress
Check your own reading progresses (API)

## セットアップ方法
以下のコマンドを入力するとサーバが起動する.
```shell
source aliases.sh
build
rails db:create db:migrate
up
# 以降, stopでサーバを停止, upでサーバを再起動できる
```
なお, `source setup.sh && up`でも同様に起動できる.
