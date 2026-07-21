names=when_invoked
visibility=public
kind=defined
source_location=manual/api/rubygems/command.md
since_by_name=when_invoked=1.9.3
until_by_name=

### def when_invoked{ ... } -> Proc

コマンドが実行されたときに評価するブロックを登録します。

通常のコマンド呼び出しは、そのコマンドクラスの execute メソッドを実行するだけです。
このメソッドでブロックを登録すると、通常の呼び出しを上書きできます。
これはテストメソッドで正しくコマンドの呼び出しが実行されたことを確認するのに使用することが出来ます。

