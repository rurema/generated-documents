names=run
visibility=public
kind=defined
source_location=manual/api/rubygems/ext/builder.md
since_by_name=run=1.9.3
until_by_name=

### def Gem::Ext::Builder.run(command, results)
@todo

与えられたコマンドを実行します。

- **param** `command` -- 実行するコマンドを文字列で指定します。

- **param** `results` -- 結果を入れるための配列です。この変数は破壊的に変更されます。

- **raise** `Gem::InstallError` -- コマンドの実行に失敗した場合に発生します。
