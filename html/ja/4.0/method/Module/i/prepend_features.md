# Module#prepend_features

### def prepend_features(mod) -> self

[Module#prepend](../../../method/Module/i/prepend.md) から呼び出されるメソッドで、
prepend の処理の実体です。このメソッド自体は mod で指定したモジュール/クラスの継承チェインの先頭に self を追加します。

このメソッドを上書きすることで、prepend の処理を変更したり追加したりできます。

- **param** `mod` -- prepend を呼び出したモジュール
- **return** -- mod が返されます

```ruby title="例"
class Recorder
  RECORDS = []
end

module X
  def self.prepend_features(mod)
    Recorder::RECORDS << mod
  end
end

class A
  prepend X
end

class B
  include X
end

class C
  prepend X
end

p Recorder::RECORDS # => [A, C]
```

- **SEE** [Module#prepend](../../../method/Module/i/prepend.md), [Module#prepended](../../../method/Module/i/prepended.md)
