# YAML::DBM#select

### def select(*keys) -> [object]
### def select { ... } -> [[String, object]]

ブロックを評価して真になった要素のみを [キー, 値] から構成される配列に格納して返します。ブロックが与えられなかった場合は、keys に対応する値を配列に格納して返します。

- **param** `keys` -- キーを文字列で指定します。複数指定できます。

ブロックを与えるかどうかで戻り値が異なる事に注意してください。

- **SEE** [YAML::DBM#values_at](../../../method/YAML=3a=3aDBM/i/values_at.md)
