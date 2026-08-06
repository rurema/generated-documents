# GetoptLong#set_options

### def set_options(*arguments) -> self

あなたのプログラムで、認識させたいオプションをセットします。
個々のオプションは、オプション名と引数のフラグからなる配列でなければいけません。

配列中のオプション名は、一文字オプション (例: -d) か長いオプション (例: --debug) を表した文字列のいずれかでなければなりません。配列の中の一番左端のオプション名が、オプションの正式名になります。配列中の引数のフラグは、[GetoptLong::NO_ARGUMENT](../../../method/GetoptLong/c/NO_ARGUMENT.md),
[GetoptLong::REQUIRED_ARGUMENT](../../../method/GetoptLong/c/REQUIRED_ARGUMENT.md), [GetoptLong::OPTIONAL_ARGUMENT](../../../method/GetoptLong/c/OPTIONAL_ARGUMENT.md)
のいずれかでなくてはなりません。

オプションを設定できるのは、get, get_option, each,
each_option メソッドを呼び出す前だけです。これらのメソッドを呼び出した後でオプションを設定しようとすると、RuntimeError
例外が発生します。

- **param** `arguments` -- オプションを表す配列を指定します。

- **raise** `ArgumentError` -- 不正な引数が与えられるた場合、発生します。

```ruby
parser.set_options(['-d', '--debug', GetoptLong::NO_ARGUMENT],
                   ['--version',     GetoptLong::NO_ARGUMENT],
                   ['--help',        GetoptLong::NO_ARGUMENT])
```

オプション名と引数のフラグの順番に決まりはないので、次のような形式でも構いません。

```ruby
parser.set_options([GetoptLong::NO_ARGUMENT, '-d', '--debug'],
                   [GetoptLong::NO_ARGUMENT, '--version'],
                   [GetoptLong::NO_ARGUMENT, '--help'])
```
