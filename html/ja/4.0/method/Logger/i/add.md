# Logger#add

### def add(severity, message = nil, progname = nil) -> true
### def add(severity, message = nil, progname = nil){ ... } -> true
### def log(severity, message = nil, progname = nil) -> true
### def log(severity, message = nil, progname = nil){ ... } -> true

メッセージをログに記録します。

ブロックを与えた場合はブロックを評価した返り値をメッセージとしてログに記録します。
ユーザがこのメソッドを直接使うことはあまりありません。

- **param** `severity` -- ログレベル。[Logger](../../../class/Logger.md) クラスで定義されている定数を指定します。
                この値がレシーバーに設定されているレベルよりも低い場合、
                メッセージは記録されません。

- **param** `message` -- ログに出力するメッセージを文字列か例外オブジェクトを指定します。
               省略すると nil が用いられます。

- **param** `progname` -- ログメッセージと一緒に記録するプログラム名を指定します。
                省略すると nil が使用されますが、実際には内部で保持されている値が使用されます。

```ruby title="例"
require 'logger'

logger = Logger.new(STDOUT)

logger.add(Logger::FATAL) { 'Fatal error!' }
# 通常はログレベルごとのメソッドを使えばいいので、 add は使わない
logger.fatal('Fatal error!')

# => F, [2019-03-11T00:34:18.037272 #1320] FATAL -- : Fatal error!
#    F, [2019-03-11T00:34:18.037272 #1320] FATAL -- : Fatal error!
```
