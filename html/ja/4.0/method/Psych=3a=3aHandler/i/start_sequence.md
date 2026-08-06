# Psych::Handler#start_sequence

### def start_sequence(anchor, tag, implicit, style) -> ()

sequence の開始を見付けたときに呼び出されます。

anchor には sequence に関連付けられた anchor の名前が文字列で渡されます。
anchor がない場合には nil が渡されます。

tag には sequence に関連付けられた tag の名前が文字列で渡されます。
tag がない場合には nil が渡されます。

implicit には sequence が implicit に開始されたかどうかが真偽値で渡されます。

style には sequence の style が整数値で渡されます。以下のいずれかです。
  - [Psych::Nodes::Sequence::BLOCK](../../../method/Psych=3a=3aNodes=3a=3aSequence/c/BLOCK.md)
  - [Psych::Nodes::Sequence::FLOW](../../../method/Psych=3a=3aNodes=3a=3aSequence/c/FLOW.md)

必要に応じてこのメソッドを override してください。

- **param** `anchor` -- 関連付けられた anchor の名前
- **param** `tag` -- タグ名
- **param** `implicit` -- sequence が implicit に開始されかどうか
- **param** `style` -- sequence のスタイル

### Example

以下の YAML ドキュメントを例として考えます。

```yaml
---
- !!seq [
  a
]
- &pewpew
  - b
```

この YAML ドキュメントには3つの list が含まれています。
外側の list の中に 2 つの list が含まれています。
start_sequence メソッドは 順に以下の引数で呼び出されます。

```text
# anchor    tag                       implicit  style
[nil,       nil,                      true,     1     ]
[nil,       "tag:yaml.org,2002:seq",  false,    2     ]
["pewpew",  nil,                      true,     1     ]
```
