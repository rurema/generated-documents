# Module#method_removed

### def method_removed(name) -> ()

メソッドが [Module#remove_method](../../../method/Module/i/remove_method.md) により削除された時にインタプリタがこのメソッドを呼び出します。

特異メソッドの削除に対するフックには
[BasicObject#singleton_method_removed](../../../method/BasicObject/i/singleton_method_removed.md)
を使います。

- **param** `name` -- 削除されたメソッド名が [Symbol](../../../class/Symbol.md) で渡されます。

```ruby title="例"
class Watcher
  def Watcher.method_removed(name)
    puts "method \"#{name}\" was removed"
  end

  def foo
  end
  remove_method :foo
end

# => method "foo" was removed
```
