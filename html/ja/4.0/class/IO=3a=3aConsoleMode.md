# class IO::ConsoleMode < Object

端末の入出力モードを表すクラスです。

現在のモードは [IO#console_mode](../method/IO/i/console_mode.md) で取得します。`new` でインスタンスを作ることは
できません。取得したモードは `dup` でコピーできます。

このクラスのメソッドは `self` が保持するモードの値を変更するだけで、端末には
反映されません。変更したモードを端末に反映するには [IO#console_mode=](../method/IO/i/console_mode=3d.md) に渡してください。


```ruby
require "io/console"
mode = STDIN.console_mode
noecho = mode.dup
noecho.echo = false
STDIN.console_mode = noecho  # エコーバックを無効にする
begin
  password = STDIN.gets
ensure
  STDIN.console_mode = mode  # 元に戻す
end
```

- **SEE** [IO#console_mode](../method/IO/i/console_mode.md), [IO#console_mode=](../method/IO/i/console_mode=3d.md)

## Instance Methods

- [echo=](../method/IO=3a=3aConsoleMode/i/echo=3d.md)
- [raw](../method/IO=3a=3aConsoleMode/i/raw.md)
- [raw!](../method/IO=3a=3aConsoleMode/i/raw=21.md)

## Constants

- [VERSION](../method/IO=3a=3aConsoleMode/c/VERSION.md)
