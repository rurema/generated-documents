# Ruby::Box.new

### def Ruby::Box.new -> Ruby::Box

他のボックスから独立した新しいボックスを返します。

`Ruby::Box` が無効なとき（環境変数 `RUBY_BOX` に `1` を設定せずに起動したとき）は
[RuntimeError](../../../class/RuntimeError.md) が発生します。
