# Set#encode_with

### def encode_with(coder) -> Psych::Coder

`self` を YAML にダンプするために [Psych.dump](../../../method/Psych/s/dump.md) などから呼び出されます。

`self` の要素をキー、true を値とするハッシュを組み立て、coder に "hash" というキーで登録します。

Ruby 3.4 までは [Set](../../../class/Set.md) は Ruby で書かれた通常のオブジェクトであり、この定義がなくても Psych でダンプできていました。Ruby 4.0 から Set は C で実装されたコアクラスになったため、以前と同じ形式でダンプできるようにこのメソッドが定義されています。

- **param** `coder` -- 情報を書き込む Psych::Coder オブジェクト
- **SEE** [Set#each](../../../method/Set/i/each.md)
