# module YAML

YAML (YAML Ain't Markup Language) を扱うモジュールです。

YAML オブジェクトは実際は [Psych](../class/Psych.md) オブジェクトです。その他のオブジェクトも同様に実体は別のオブジェクトです。もし確認したいメソッドの記述が見つからない場合は、[psych](../library/psych.md) ライブラリを確認してください。

```ruby title="例"
require "yaml"

p YAML                # => Psych
p YAML::Stream        # => Psych::Stream
```
