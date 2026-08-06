# Method#to_s

### def inspect -> String
### def to_s    -> String

self を読みやすい文字列として返します。

以下の形式の文字列を返します。

```text
#<Method: klass1(klass2)#method(arg) foo.rb:2>    (形式1)
```

klass1 は、[Method#inspect](../../../method/Method/i/inspect.md) では、レシーバのクラス名、
[UnboundMethod#inspect](../../../method/UnboundMethod/i/inspect.md) では、[UnboundMethod](../../../class/UnboundMethod.md) オブジェクトの生成元となったクラス／モジュール名です。

klass2 は、実際にそのメソッドを定義しているクラス／モジュール名、
method は、メソッド名を表します。

arg は引数を表します。
「foo.rb:2」は [Method#source_location](../../../method/Method/i/source_location.md) を表します。
source_location が nil の場合には付きません。

```ruby title="例"
module Foo
  def foo
    "foo"
  end
end
class Bar
  include Foo
  def bar(a, b)
  end
end

p Bar.new.method(:foo)        # => #<Method: Bar(Foo)#foo() test.rb:2>
p Bar.new.method(:bar)        # => #<Method: Bar#bar(a, b) test.rb:8>
```

klass1 と klass2 が同じ場合は以下の形式になります。

```text
#<Method: klass1#method() foo.rb:2>             (形式2)
```

特異メソッドに対しては、

```text
#<Method: obj.method() foo.rb:2>                (形式3)
#<Method: klass1(klass2).method() foo.rb:2>     (形式4)
```

という形式の文字列を返します。二番目の形式では klass1 はレシーバ、
klass2 は実際にそのメソッドを定義しているオブジェクトになります。

```ruby title="例"
# オブジェクトの特異メソッド
obj = ""
class <<obj
  def foo
  end
end
p obj.method(:foo)      # => #<Method: "".foo() foo.rb:4>

# クラスメソッド(クラスの特異メソッド)
class Foo
  def Foo.foo
  end
end
p Foo.method(:foo)      # => #<Method: Foo.foo() foo.rb:11>

# スーパークラスのクラスメソッド
class Bar < Foo
end
p Bar.method(:foo)      # => #<Method: Bar(Foo).foo() foo.rb:11>

# 以下は(形式1)の出力になる
module Baz
  def baz
  end
end

class <<obj
  include Baz
end
p obj.method(:baz)      # => #<Method: String(Baz)#baz() foo.rb:23>
```

- **SEE** [Object#inspect](../../../method/Object/i/inspect.md)
