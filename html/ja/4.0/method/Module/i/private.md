# Module#private

### def private() -> nil
### def private(name) -> String | Symbol
### def private(*name) -> Array
### def private(names) -> Array

メソッドを private に設定します。

引数なしのときは今後このクラスまたはモジュール定義内で新規に定義されるメソッドを関数形式でだけ呼び出せるように(private)設定します。

引数が与えられた時には引数によって指定されたメソッドを private に設定します。

可視性については [spec/def#limit](../../../doc/spec=2fdef.md#limit) を参照して下さい。

- **param** `name` --  0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を指定します。
- **param** `names` -- 0 個以上の [String](../../../class/String.md) または [Symbol](../../../class/Symbol.md) を [Array](../../../class/Array.md) で指定します。

- **raise** `NameError` -- 存在しないメソッド名を指定した場合に発生します。

```ruby title="例"
class Account
  def foo1() 1 end      # デフォルトでは public
  private               # 可視性を private に変更
  def foo2() 2 end      # foo2 は private メソッド
end

account = Account.new
p account.foo1          # => 1
account.foo2            # => private method 'foo2' called for an instance of Account (NoMethodError)
```
