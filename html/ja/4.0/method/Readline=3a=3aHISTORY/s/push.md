# Readline::HISTORY.push

### def Readline::HISTORY.push(*string) -> self

ヒストリの最後に string で指定した文字列を追加します。複数の string を指定できます。
self を返します。

- **param** `string` -- 文字列を指定します。複数指定できます。

例: "foo"を追加する。

```ruby
require "readline"

Readline::HISTORY.push("foo")
p Readline::HISTORY[-1] # => "foo"
```

例: "foo"、"bar"を追加する。

```ruby
require "readline"

Readline::HISTORY.push("foo", "bar")
p Readline::HISTORY[-1] # => "bar"
p Readline::HISTORY[-2] # => "foo"
```

- **SEE** [Readline::HISTORY.<<](../../../method/Readline=3a=3aHISTORY/s/=3c=3c.md)
