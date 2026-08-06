# Module#freeze

### def freeze -> self

モジュールを凍結（内容の変更を禁止）します。

凍結したモジュールにメソッドの追加など何らかの変更を加えようとした場合に
[FrozenError](../../../class/FrozenError.md)
が発生します。

- **SEE** [Object#freeze](../../../method/Object/i/freeze.md)

```ruby title="例"
module Settings; end
Settings.freeze

module Settings
  def foo; end
end # ~> FrozenError: can't modify frozen module: Settings
```
