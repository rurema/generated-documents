# class LoadError < ScriptError

[Kernel?.require](../method/Kernel/m/require.md)、[Kernel?.require_relative](../method/Kernel/m/require_relative.md)、[Kernel?.load](../method/Kernel/m/load.md) が失敗したときに発生します。

```ruby title="LoadError を捕捉する例"
# lib-a が require できなければ代替の lib-b を使う
begin
  require "lib-a"
rescue LoadError
  require "lib-b"
end
```

`LoadError` は [StandardError](../class/StandardError.md) のサブクラスではないので、例外型を指定しない `rescue` では捕捉できないことに注意してください。

## Instance Methods

- [path](../method/LoadError/i/path.md)
