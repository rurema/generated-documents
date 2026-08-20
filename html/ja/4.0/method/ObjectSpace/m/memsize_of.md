# ObjectSpace?.memsize_of

### module_function def memsize_of(obj) -> Integer

obj が消費するメモリ使用量をバイト単位で返します。

- **param** `obj` -- 任意のオブジェクトを指定します。

戻り値の内容は完全ではない事に注意してください。この内容はあくまでもヒントとして扱う必要があります。特に T_DATA の値は正しくないでしょう。
Ruby 2.2 以降では RVALUE のサイズを含んだ結果を返します。

本メソッドは C Ruby 以外では動作しません。

```ruby title="例"
require 'objspace'

p ObjectSpace.memsize_of(10)          # => 0
p ObjectSpace.memsize_of("12345" * 10)  # => 91
```
