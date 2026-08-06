# JSON::State.from_state

### def JSON::State.from_state(options) -> JSON::State

与えられた options によって生成した [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスを返します。

- **param** `options` -- [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスか、ハッシュを指定します。

- **return** -- options がハッシュである場合は、それによって初期化した [JSON::State](../../../class/JSON=3a=3aState.md) を
        返します。options が [JSON::State](../../../class/JSON=3a=3aState.md) のインスタンスである場合は単に
        options を返します。いずれでも無い場合は、何も設定されていない [JSON::State](../../../class/JSON=3a=3aState.md) の
        インスタンスを返します。

```ruby title="例 Hash を指定"
require "json"

json_state = JSON::State.from_state(indent: "\t")
json_state.class  # => JSON::Ext::Generator::State
json_state.indent # => "\t"
```

```ruby title="例 JSON::State を指定"
require "json"

json_state = JSON::State.from_state(indent: "\t")
# JSON を出力する何らかの処理を実行する
same = JSON::State.from_state(json_state)
same.equal?(json_state) # => true
same.class               # => JSON::Ext::Generator::State
same.indent              # => "\t"
```
