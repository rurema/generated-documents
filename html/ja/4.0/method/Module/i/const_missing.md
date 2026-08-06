# Module#const_missing

### def const_missing(name)

定義されていない定数を参照したときに Ruby インタプリタがこのメソッドを呼びます。

- **param** `name` -- 参照した定数名の [Symbol](../../../class/Symbol.md)

- **raise** `NameError` -- このメソッドを呼び出した場合、デフォルトで発生する例外

```ruby title="例"
class Application
  def Application.const_missing(id)
    warn "undefined constant #{id.inspect}"
  end

  Timezone
end
Application::Timezone

# => undefined constant :Timezone
#    undefined constant :Timezone
```
