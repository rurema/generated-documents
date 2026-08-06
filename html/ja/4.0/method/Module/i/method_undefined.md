# Module#method_undefined

### def method_undefined(name) -> ()

このモジュールのインスタンスメソッド name が
[Module#undef_method](../../../method/Module/i/undef_method.md) によって削除されるか、
undef 文により未定義にされると、インタプリタがこのメソッドを呼び出します。

特異メソッドの削除をフックするには
[BasicObject#singleton_method_undefined](../../../method/BasicObject/i/singleton_method_undefined.md)
を使います。

- **param** `name` -- 削除/未定義にされたメソッド名が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class C
  def C.method_undefined(name)
    puts "method C\##{name} was undefined"
  end

  def foo
  end
  def bar
  end

  undef_method :foo
  undef bar
end
```

```text title="実行結果"
method C#foo was undefined
method C#bar was undefined
```
