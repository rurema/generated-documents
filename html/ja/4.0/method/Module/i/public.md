# Module#public

### def public() -> nil
### def public(name) -> String | Symbol
### def public(*name) -> Array
### def public(names) -> Array

メソッドを public に設定します。

引数なしのときは今後このクラスまたはモジュール定義内で新規に定義されるメソッドをどんな形式でも呼び出せるように(public)設定します。

引数が与えられた時には引数によって指定されたメソッドを public に設定します。

可視性については [spec/def#limit](../../../doc/spec=2fdef.md#limit) を参照して下さい。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

- **raise** `NameError` -- 存在しないメソッド名を指定した場合に発生します。

```ruby title="例"
def foo() 1 end
p foo             # => 1
# the toplevel default is private
# (Ruby 2.7 以降、レシーバが self そのものの呼び出しは private でも可能なため
#  self.foo はエラーにならない。別のオブジェクトをレシーバにすると呼び出せない)
Object.new.foo    # => private method 'foo' called for an instance of Object (NoMethodError)

def bar() 2 end
public :bar       # visibility changed (all access allowed)
p bar             # => 2
p Object.new.bar  # => 2
```
