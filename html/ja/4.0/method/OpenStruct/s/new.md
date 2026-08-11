# OpenStruct.new

### def OpenStruct.new(hash = nil) -> OpenStruct

OpenStruct オブジェクトを生成します。

ハッシュが与えられたとき、それぞれのキーを生成したオブジェクトの要素にし、値をセットします。

- **param** `hash` -- 設定する要素とその値を指定します。
       hash には [Hash](../../../class/Hash.md) クラスのインスタンス、または each_pair メソッドを持つオブジェクトを用いる事ができます。
- **raise** `NoMethodError` -- hash のキーが to_sym メソッドを持たないときに発生します。

```ruby
require 'ostruct'
some1 = OpenStruct.new({:a =>"a",:b =>"b"}) # => #<OpenStruct b="b", a="a">
```
