# class Method < Object

[Object#method](../method/Object/i/method.md) によりオブジェクト化されたメソッドオブジェクトのクラスです。

メソッドの実体（名前でなく）とレシーバの組を封入します。
[Proc](../class/Proc.md) オブジェクトと違ってコンテキストを保持しません。

### Proc との差

[Method](../class/Method.md) は取り出しの対象であるメソッドがなければ作れませんが、[Proc](../class/Proc.md) は準備なしに作れます。その点から
[Proc](../class/Proc.md) は使い捨てに向き、[Method](../class/Method.md) は何度も繰り返し生成する場合に向くと言えます。また内包するコードの大きさという点では
[Proc](../class/Proc.md) は小規模、[Method](../class/Method.md) は大規模コードに向くと言えます。

既存のメソッドを [Method](../class/Method.md) オブジェクト化する。

```ruby title="例"
class Foo
  def foo(arg)
    "foo called with arg #{arg}"
  end
end

m = Foo.new.method(:foo)

p m             # => #<Method: Foo#foo>
p m.call(1)     # => "foo called with arg 1"
```

名前のないメソッド(の代わり)が必要なら [Proc](../class/Proc.md) を使うと良い。

```ruby title="例"
pr = Proc.new {|arg|
  "proc called with arg #{arg}"
}

p pr            # => #<Proc:0x401b1fcc>
p pr.call(1)    # => "proc called with arg 1"
```

[Method](../class/Method.md) オブジェクトが有用なのは以下のような場合。

```ruby title="例"
class Foo
  def foo() "foo" end
  def bar() "bar" end
  def baz() "baz" end
end

obj = Foo.new

# 任意のキーとメソッドの関係をハッシュに保持しておく
methods = {1 => obj.method(:foo),
           2 => obj.method(:bar),
           3 => obj.method(:baz)}

# キーを使って関連するメソッドを呼び出す
p methods[1].call       # => "foo"
p methods[2].call       # => "bar"
p methods[3].call       # => "baz"
```

しかし、レシーバを固定させる(Method オブジェクトはレシーバを保持する)必要がないなら [Object#public_send](../method/Object/i/public_send.md)を使う方法も有用。

```ruby title="例"
class Foo
  def foo() "foo" end
  def bar() "bar" end
  def baz() "baz" end
end

# 任意のキーとメソッド(の名前)の関係をハッシュに保持しておく
# レシーバの情報がここにはないことに注意
methods = {1 => :foo,
           2 => :bar,
           3 => :baz}

# キーを使って関連するメソッドを呼び出す
# レシーバは任意(Foo クラスのインスタンスである必要もない)
p Foo.new.public_send(methods[1])      # => "foo"
p Foo.new.public_send(methods[2])      # => "bar"
p Foo.new.public_send(methods[3])      # => "baz"
```

- **SEE** [Object#method](../method/Object/i/method.md)

## Instance Methods

- [<<](../method/Method/i/=3c=3c.md)
- [==](../method/Method/i/=3d=3d.md)
- [eql?](../method/Method/i/eql=3f.md)
- [===](../method/Method/i/=3d=3d=3d.md)
- [\[\]](../method/Method/i/=5b=5d.md)
- [call](../method/Method/i/call.md)
- [>>](../method/Method/i/=3e=3e.md)
- [arity](../method/Method/i/arity.md)
- [box](../method/Method/i/box.md)
- [clone](../method/Method/i/clone.md)
- [curry](../method/Method/i/curry.md)
- [hash](../method/Method/i/hash.md)
- [inspect](../method/Method/i/inspect.md)
- [to_s](../method/Method/i/to_s.md)
- [name](../method/Method/i/name.md)
- [original_name](../method/Method/i/original_name.md)
- [owner](../method/Method/i/owner.md)
- [parameters](../method/Method/i/parameters.md)
- [receiver](../method/Method/i/receiver.md)
- [source_location](../method/Method/i/source_location.md)
- [super_method](../method/Method/i/super_method.md)
- [to_proc](../method/Method/i/to_proc.md)
- [unbind](../method/Method/i/unbind.md)
