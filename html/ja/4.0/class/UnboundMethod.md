# class UnboundMethod < Object

レシーバを持たないメソッドを表すクラスです。
呼び出すためにはレシーバにバインドする必要があります。

[Module#instance_method](../method/Module/i/instance_method.md) や
[Method#unbind](../method/Method/i/unbind.md) により生成し、後で
[UnboundMethod#bind](../method/UnboundMethod/i/bind.md) によりレシーバを割り当てた [Method](../class/Method.md) オブジェクトを作ることができます。

```ruby title="例: Method クラスの冒頭にある例を UnboundMethod で書くと以下のようになります。"
class Foo
  def foo() "foo" end
  def bar() "bar" end
  def baz() "baz" end
end

# 任意のキーとメソッドの関係をハッシュに保持しておく
# レシーバの情報がここにはないことに注意
methods = {1 => Foo.instance_method(:foo),
           2 => Foo.instance_method(:bar),
           3 => Foo.instance_method(:baz)}

# キーを使って関連するメソッドを呼び出す
# レシーバは任意(Foo クラスのインスタンスでなければならない)
p methods[1].bind(Foo.new).call      # => "foo"
p methods[2].bind(Foo.new).call      # => "bar"
p methods[3].bind(Foo.new).call      # => "baz"
```

```ruby title="例: 以下はメソッドの再定義を UnboundMethod を使って行う方法です。普通は alias や super を使います。"
class Foo
  def foo
    p :foo
  end
  @@orig_foo = instance_method :foo
  def foo
    p :bar
    @@orig_foo.bind(self).call
  end
end

Foo.new.foo

# => :bar
#    :foo
```

## Instance Methods

- [==](../method/UnboundMethod/i/=3d=3d.md)
- [eql?](../method/UnboundMethod/i/eql=3f.md)
- [arity](../method/UnboundMethod/i/arity.md)
- [bind](../method/UnboundMethod/i/bind.md)
- [bind_call](../method/UnboundMethod/i/bind_call.md)
- [clone](../method/UnboundMethod/i/clone.md)
- [hash](../method/UnboundMethod/i/hash.md)
- [inspect](../method/UnboundMethod/i/inspect.md)
- [to_s](../method/UnboundMethod/i/to_s.md)
- [name](../method/UnboundMethod/i/name.md)
- [original_name](../method/UnboundMethod/i/original_name.md)
- [owner](../method/UnboundMethod/i/owner.md)
- [parameters](../method/UnboundMethod/i/parameters.md)
- [source_location](../method/UnboundMethod/i/source_location.md)
- [super_method](../method/UnboundMethod/i/super_method.md)
