# String.new

### def String.new(string = "")                -> String
### def String.new(string = "", encoding: string.encoding, capacity: Integer) -> String

string と同じ内容の新しい文字列を作成して返します。
引数を省略した場合は空文字列を生成して返します。

- **param** `string` --   文字列
- **param** `encoding` -- 作成する文字列のエンコーディングを文字列か
                [Encoding](../../../class/Encoding.md) オブジェクトで指定します(変換は行われません)。省略した場合は引数 string のエンコーディングと同じになります(ただし、string が指定されていなかった場合は
                [Encoding::ASCII_8BIT](../../../method/Encoding/c/ASCII_8BIT.md)になります)。
- **param** `capacity` -- 内部バッファのサイズを指定します。
                指定することで、なんども文字列連結する
                (そしてreallocがなんども呼ばれる)ときのパフォーマンスが改善されるかもしれません。
                capacity を指定しても文字列の内容や
                [String#bytesize](../../../method/String/i/bytesize.md) が変わるわけではありません。
                内部バッファの実際の確保方法は実装依存です。
                特に短い文字列はオブジェクトに直接埋め込まれる表現になって独立したバッファを持たないなど、指定が反映されない場合もあります。
- **return** --         引数 string と同じ内容の文字列オブジェクト

```ruby title="例"
text = "hoge".encode("EUC-JP")
no_option = String.new(text)                             # => "hoge"
p no_option.encoding == Encoding::EUC_JP                 # => true
with_encoding = String.new(text, encoding: "UTF-8")      # => "hoge"
p with_encoding.encoding == Encoding::UTF_8              # => true
p String.new("test", encoding: "UTF-8", capacity: 100_000) # => "test"
```
