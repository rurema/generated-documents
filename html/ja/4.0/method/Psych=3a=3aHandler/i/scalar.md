# Psych::Handler#scalar

### def scalar(value, anchor, tag, plain, quoted, style) -> ()

スカラー値を見付けたときに呼び出されます。

value にはスカラー値の文字列が渡されます。

anchor にはスカラー値に関連付けられた anchor の名前が文字列で渡されます。
anchor がない場合には nil が渡されます。

tag にはスカラー値に関連付けられた tag の名前が文字列で渡されます。
tag がない場合には nil が渡されます。

plain は plain style であるかどうか、quoted は quoted style であるかどうかが渡されます。style には node の style が整数値で渡されます。
style は次の値のいずれかです。
  - [Psych::Nodes::Scalar::PLAIN](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/PLAIN.md)
  - [Psych::Nodes::Scalar::SINGLE_QUOTED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/SINGLE_QUOTED.md)
  - [Psych::Nodes::Scalar::DOUBLE_QUOTED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/DOUBLE_QUOTED.md)
  - [Psych::Nodes::Scalar::LITERAL](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/LITERAL.md)
  - [Psych::Nodes::Scalar::FOLDED](../../../method/Psych=3a=3aNodes=3a=3aScalar/c/FOLDED.md)

必要に応じてこのメソッドを override してください。

- **param** `value` -- スカラー値
- **param** `anchor` -- 関連付けられた anchor の名前
- **param** `tag` -- タグ名
- **param** `plain` -- plain style であるかどうか
- **param** `quoted` -- quoted style であるかどうか
- **param** `style` -- スカラーのスタイル

### 例

以下の YAML ドキュメントには多くのパターンのスカラーが含まれています。

```yaml
---
- !str "foo"
- &anchor fun
- many
  lines
- |
  many
  newlines
```

この YAML ドキュメントには4つの文字列が含まれています。
scalar メソッドは 順に以下の引数で呼び出されます。

```text
# value               anchor    tag     plain   quoted  style
["foo",               nil,      "!str", false,  false,  3    ]
["fun",               "anchor", nil,    true,   false,  1    ]
["many lines",        nil,      nil,    true,   false,  1    ]
["many\nnewlines\n",  nil,      nil,    false,  true,   4    ]
```
