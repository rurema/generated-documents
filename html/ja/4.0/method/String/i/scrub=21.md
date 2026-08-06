# String#scrub!

### def scrub!               -> String
### def scrub!(repl)         -> String
### def scrub!{|bytes| ... } -> String

self が不正なバイト列を含む場合に別の文字列に置き換えます。常に self を返します。

- **param** `repl` -- 不正なバイト列を置き換える文字列を指定します。省略した場合
            は self の文字エンコーディングが [Encoding::UTF_16BE](../../../method/Encoding/c/UTF_16BE.md),
            [Encoding::UTF_16LE](../../../method/Encoding/c/UTF_16LE.md), [Encoding::UTF_32BE](../../../method/Encoding/c/UTF_32BE.md),
            [Encoding::UTF_32LE](../../../method/Encoding/c/UTF_32LE.md), [Encoding::UTF_8](../../../method/Encoding/c/UTF_8.md) のいずれか
            の場合は "\uFFFD" を表す文字で、それ以外の場合は "?" で置き
            換えられます。ブロックが指定された場合は不正なバイト列はブ
            ロックの戻り値で置き換えられます。

```ruby title="例"
p "abc\u3042\x81".scrub!    # => "abc\u3042\uFFFD"
p "abc\u3042\x81".scrub!("*") # => "abc\u3042*"
p "abc\u3042\xE3\x80".scrub!{|bytes| '<'+bytes.unpack('H*')[0]+'>' } # => "abc\u3042<e380>"
```

- **SEE** [String#scrub](../../../method/String/i/scrub.md)
