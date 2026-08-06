# UnboundMethod#bind

### def bind(obj)    -> Method

self を obj にバインドした [Method](../../../class/Method.md) オブジェクトを生成して返します。

- **param** `obj` -- 自身をバインドしたいオブジェクトを指定します。ただしバインドできるのは、
           生成元のクラスかそのサブクラスのインスタンスのみです。

- **raise** `TypeError` -- objがbindできないオブジェクトである場合に発生します

```ruby title="例"
# クラスのインスタンスメソッドの UnboundMethod の場合
class Foo
  def foo
    "foo"
  end
end

# UnboundMethod `m' を生成
p m = Foo.instance_method(:foo) # => #<UnboundMethod: Foo#foo>

# Foo のインスタンスをレシーバとする Method オブジェクトを生成
p m.bind(Foo.new)               # => #<Method: Foo#foo>

# Foo のサブクラス Bar のインスタンスをレシーバとする Method
class Bar < Foo
end
p m.bind(Bar.new)               # => #<Method: Bar(Foo)#foo>


# モジュールのインスタンスメソッドの UnboundMethod の場合
module Foo
  def foo
    "foo"
  end
end

# UnboundMethod `m' を生成
p m = Foo.instance_method(:foo) # => #<UnboundMethod: Foo#foo>

# Foo をインクルードしたクラス Bar のインスタンスをレシーバと
# する Method オブジェクトを生成
class Bar
  include Foo
end
p m.bind(Bar.new)               # => #<Method: Bar(Foo)#foo>
```

- **SEE** [UnboundMethod#bind_call](../../../method/UnboundMethod/i/bind_call.md)
