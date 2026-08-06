# Net::HTTP#start

### def start -> self
### def start {|http| .... } -> object

TCP コネクションを張り、HTTP セッションを開始します。
すでにセッションが開始していたら例外 IOError を発生します。

ブロックを与えた場合には自分自身をそのブロックに渡し、ブロックが終わったときに接続を閉じます。このときはブロックの値を返り値とします。

ブロックを与えなかった場合には自分自身を返します。
利用後にはこのオブジェクトを [Net::HTTP#finish](../../../method/Net=3a=3aHTTP/i/finish.md) してください。

- **raise** `IOError` -- すでにセッションが開始していた場合に発生します。
- **raise** `Net::OpenTimeout` -- 接続がタイムアウトしたときに発生します
