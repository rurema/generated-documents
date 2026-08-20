# Object#_dump

### def _dump(limit) -> String

[Marshal?.dump](../../../method/Marshal/m/dump.md) において出力するオブジェクトがメソッド _dump
を定義している場合には、そのメソッドの結果が書き出されます。

Ruby 1.8 以降では[Object#marshal_dump](../../../method/Object/i/marshal_dump.md), [Object#marshal_load](../../../method/Object/i/marshal_load.md)の使用が推奨されます。 Marshal.dump するオブジェクトが _dump と marshal_dump の両方のメソッドを持つ場合は marshal_dump が優先されます。

メソッド _dump は引数として再帰を制限するレベル limit を受け取り、オブジェクトを文字列化したものを返します。

インスタンスがメソッド _dump を持つクラスは必ず同じフォーマットを読み戻すクラスメソッド _load を定義する必要があります。_load はオブジェクトを表現した文字列を受け取り、それをオブジェクトに戻したものを返す必要があります。

- **param** `limit` -- 再帰の制限レベルを表す整数です。
- **return** -- オブジェクトを文字列化したものを返すように定義すべきです。

```ruby
class Foo
  def initialize(arg)
    @foo = arg
  end
  def _dump(limit)
    Marshal.dump(@foo, limit)
  end
  def self._load(obj)
    p obj
    Foo.new(Marshal.load(obj))
  end
end
foo = Foo.new(['foo', 'bar'])
p foo                      # => #<Foo:0xbaf234 @foo=["foo", "bar"]>
dms = Marshal.dump(foo)
p dms                      # => "\004\bu:\bFoo\023\004\b[\a\"\bfoo\"\bbar"
result = Marshal.load(dms) # => "\004\b[\a\"\bfoo\"\bbar" # self._load の引数
p result                   # => #<Foo:0xbaf07c @foo=["foo", "bar"]>
```

インスタンス変数の情報は普通マーシャルデータに含まれるので、上例のように _dump を定義する必要はありません(ただし _dump を定義するとインスタンス変数の情報は dump されなくなります)。
_dump/_load はより高度な制御を行いたい場合や拡張ライブラリで定義したクラスのインスタンスがインスタンス変数以外に情報を保持する場合に利用します。(例えば、クラス [Time](../../../class/Time.md) は、_dump/_load を定義しています)

- **SEE** [Object#marshal_dump](../../../method/Object/i/marshal_dump.md), [Object#marshal_load](../../../method/Object/i/marshal_load.md), [Class#_load](../../../method/Class/i/_load.md)
