# Syslog?.alert

### module_function def emerg(message, *arg) -> self
### module_function def alert(message, *arg) -> self
### module_function def crit(message, *arg) -> self
### module_function def err(message, *arg) -> self
### module_function def warning(message, *arg) -> self
### module_function def notice(message, *arg) -> self
### module_function def info(message, *arg) -> self
### module_function def debug(message, *arg) -> self

Syslog#log()のショートカットメソッド。
システムによっては定義されていないものもあります。

例えば、Syslog.emerg(message, *arg) は、Syslog.log(Syslog::LOG_EMERG, message, *arg)
と同じです。

- **param** `message` -- フォーマット文字列です。[Kernel?.sprintf](../../../method/Kernel/m/sprintf.md) と同じ形式の引数を指定します。

- **param** `arg` -- フォーマットされる引数です。

- **raise** `ArgumentError` -- 引数が1つ以上でない場合に発生します。

- **raise** `RuntimeError` -- syslog がopen されていない場合発生します。

```ruby title="例"
require 'syslog'
Syslog.open("syslogtest") {|syslog|
  syslog.crit("the sky is falling in %d seconds!",5)
}
```
