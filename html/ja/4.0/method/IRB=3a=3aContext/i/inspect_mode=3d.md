# IRB::Context#inspect_mode=

### def inspect_mode=(opt)

実行結果の出力方式を opt に設定します。

- **param** `opt` -- 以下のいずれかを指定します。
- **`false, :to_s, :raw`**:
  出力結果を to_s したものを表示します。
- **`true, :p, :inspect`**:
  出力結果を inspect したものを表示します。
- **`:pp, :pretty_inspect`**:
  出力結果を pretty_inspect したものを表示します。
- **`:yaml, :YAML`**:
  出力結果を YAML 形式にしたものを表示します。
- **:marshal, :Marshal, :MARSHAL, [Marshal](../../../class/Marshal.md)**:
  出力結果を [Marshal?.dump](../../../method/Marshal/m/dump.md) したものを表示します。

- **SEE** [irb#inspect_mode](../../../library/irb.md#inspect_mode)
