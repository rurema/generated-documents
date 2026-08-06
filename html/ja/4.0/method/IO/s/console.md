# IO.console

### def IO.console -> File | nil

端末を [File](../../../class/File.md) オブジェクトで返します。

```ruby
require "io/console"
p IO.console # => #<File:/dev/tty>
```

プロセスが端末から切り離された状態で実行すると nil を返します。

戻り値はプラットフォームや環境に依存します。
