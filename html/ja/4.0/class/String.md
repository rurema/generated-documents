# class String < Object

文字列のクラスです。
ヌル文字を含む任意のバイト列を扱うことができます。
文字列の長さにはメモリ容量以外の制限はありません。

文字列は通常、文字列リテラルを使って生成します。
以下に文字列リテラルの例をいくつか示します。

```ruby title="文字列リテラルの例"
'str\\ing'   # シングルクオート文字列 (エスケープシーケンスがほぼ無効)
"string\n"   # ダブルクオート文字列 (エスケープシーケンスがすべて有効)
%q(str\\ing) # 「%q」文字列 (エスケープシーケンスがほぼ無効、デリミタが変えられる)
%Q(string\n) # 「%Q」文字列 (エスケープシーケンスがすべて有効、デリミタが変えられる)

# ヒアドキュメント
<<End
この行はヒアドキュメント
End

# ダブルクオートヒアドキュメント (クオートなしの場合と同じ)
<<"End"
この行はヒアドキュメント
End

# シングルクオートヒアドキュメント (一切のエスケープシーケンスが無効)
<<'End'
この行はヒアドキュメント
End

# 終端記号がインデントされたヒアドキュメント
# シングルクオート、ダブルクオートとの併用も可能
<<-End
この行はヒアドキュメント (終端記号をインデントできる)
   End

# 中身がインデントされたヒアドキュメント
# シングルクオート、ダブルクオートとの併用も可能
<<~End
  この行のインデントは無視される
End
```

### 破壊的な変更 {#mutable}

Ruby の String クラスは mutable です。
つまり、オブジェクト自体を破壊的に変更できます。

「破壊的な変更」とは、あるオブジェクトの内容自体を変化させることです。
例えば文字列のすべての文字を破壊的に大文字へ変更する
[String#upcase!](../method/String/i/upcase=21.md) メソッドの使用例を以下に示します。

```ruby title="例:String#upcase!"
a = "string"
b = a
a.upcase!
p a   # => "STRING"
p b   # => "STRING"
```

この例では、a に対してメソッドを呼んだにも関わらず b も変更されています。
これは、変数 a と b が一つの文字列オブジェクトを指していて、
upcase! メソッドでそのオブジェクト自体が変更されたからです。

upcase! の非破壊版である [String#upcase](../method/String/i/upcase.md) を使った例を以下に示します。
こちらでは a の変更が b に波及しません。

```ruby title="例:String#upcase"
a = "string"
b = a
a = a.upcase
p a   # => "STRING"
p b   # => "string"
```

一般には、破壊的「ではない」メソッドを中心に使っていくほうがバグが出にくくなります。

String クラスのメソッドには破壊的なメソッドも非破壊的なメソッドもあります。
破壊的なメソッドの例としては concat, sub!, upcase! などが挙げられます。
非破壊的なメソッドの例としては index, sub, upcase などが挙げられます。

同じ動作で破壊的なメソッドと非破壊的なメソッドの両方が定義されているときは、破壊的なバージョンには名前の最後に「!」が付いています。
例えば upcase メソッドは非破壊的で、upcase! メソッドは破壊的です。

ただし、この命名ルールを「破壊的なメソッドにはすべて『!』が付いている」と解釈しないでください。
例えば concat には「!」が付いていませんが、破壊的です。あくまでも、「『!』が付いているメソッドと付いていないメソッドの両方があるときは、『!』が付いているほうが破壊的」というだけです。
「『!』が付いているならば破壊的」は常に成立しますが、逆は必ずしも成立しません。

### 多言語化と文字列のエンコーディング {#m17n}

String オブジェクトは自身のエンコーディング情報を持ちます。
インスタンスメソッドはエンコーディングに従い、1バイトではなく1文字を単位として動作します。
エンコーディングの変換にはメソッド [String#encode](../method/String/i/encode.md) を使います。

```ruby title="例:エンコーディングの変換"
p "いろは".size      #=> 3
p "漢字"[0]          #=> "漢"
p "山本山".reverse   #=> "山本山" (回文なので分からないですね)
p "ループ".reverse   #=> "プール"

s = "ruビー"
s[0..1] = "ル"
p s                  #=> "ルビー"

e = "言語".encode("EUC-JP")
u = "言語".encode("UTF-8")
p e.encoding                   #=> Encoding::EUC_JP
p u.encoding                   #=> Encoding::UTF_8
```

より詳しく知りたい場合は、[spec/m17n](../doc/spec=2fm17n.md) を参照してください。

#### 文字列同士の比較・結合

文字列同士の比較・結合などでは両者のエンコーディングを意識する必要があります。
例えば [String#==](../method/String/i/=3d=3d.md) や [String#eql?](../method/String/i/eql=3f.md) は両者のエンコーディングが等しくバイト列表現が等しい場合にのみ true を返します。
このときエンコーディングが UTF-8 であっても正規化せずに比較します。
文字列の結合も同様です。異なるエンコーディング同士の文字列を結合する時は明示的にエンコーディングを変換する必要があります。

```ruby title="例:文字列の結合"
s = "いろは"
a = s.encode("EUC-JP")
b = s.encode("UTF-8")
p a == b                            #=> false

s = "合".encode("EUC-JP")
p s + "\u{4f53}".encode("EUC-JP")   #=> "合体"
s + "\u{4f53}"                      # ~> Encoding::CompatibilityError
```

[String#eql?](../method/String/i/eql=3f.md) はハッシュのキーの比較に使われますので、ハッシュのキーに非 ASCII 文字列を使う場合には注意が必要です。

```ruby title="動作例:  (注)一行目にmagic commentが必要です。"
# encoding: UTF-8
h = {}
s = "いろは"
s.force_encoding("EUC-JP")
h[s] = 1
s.force_encoding("ASCII-8BIT")
p h[s]                             #=> nil
```

#### 7bit クリーンな文字列

ASCII 互換エンコーディングをもつ 7bit クリーンな文字列はエンコーディングに関わらず ASCII として扱うことができます。
例えば [String#==](../method/String/i/=3d=3d.md) は両者の文字エンコーディングが異なっていても
true を返します。
ASCII 互換エンコーディングをもつ文字列にエンコーディングの変換なしで結合できます。

```ruby title="例:"
s = "abc"
a = s.encode("EUC-JP")
b = s.encode("UTF-8")
p a == b                           #=> true
p a + b                            #=> "abcabc"
```

ここで言う「ASCII互換エンコーディング」とは、コードポイントが同一という意味ではなくバイト列が同じことを意味します。従って UTF-16 はASCII互換ではありません。
また厳密性を追求せず、おおむね互換なら互換と呼びます。よって Shift_JIS は ASCII 互換です。

#### バイト列を表す文字列

文字列ではない単なるバイト列も String オブジェクトで表されます。
その時のエンコーディングは ASCII-8BIT です。

## Class Methods

- [new](../method/String/s/new.md)
- [try_convert](../method/String/s/try_convert.md)

## Instance Methods

- [%](../method/String/i/=25.md)
- [*](../method/String/i/=2a.md)
- [+](../method/String/i/=2b.md)
- [+@](../method/String/i/=2b=40.md)
- [-@](../method/String/i/=2d=40.md)
- [dedup](../method/String/i/dedup.md)
- [<<](../method/String/i/=3c=3c.md)
- [concat](../method/String/i/concat.md)
- [<=>](../method/String/i/=3c=3d=3e.md)
- [==](../method/String/i/=3d=3d.md)
- [===](../method/String/i/=3d=3d=3d.md)
- [=~](../method/String/i/=3d=7e.md)
- [\[\]](../method/String/i/=5b=5d.md)
- [slice](../method/String/i/slice.md)
- [\[\]=](../method/String/i/=5b=5d=3d.md)
- [append_as_bytes](../method/String/i/append_as_bytes.md)
- [ascii_only?](../method/String/i/ascii_only=3f.md)
- [b](../method/String/i/b.md)
- [byteindex](../method/String/i/byteindex.md)
- [byterindex](../method/String/i/byterindex.md)
- [bytes](../method/String/i/bytes.md)
- [bytesize](../method/String/i/bytesize.md)
- [byteslice](../method/String/i/byteslice.md)
- [bytesplice](../method/String/i/bytesplice.md)
- [capitalize](../method/String/i/capitalize.md)
- [capitalize!](../method/String/i/capitalize=21.md)
- [casecmp](../method/String/i/casecmp.md)
- [casecmp?](../method/String/i/casecmp=3f.md)
- [center](../method/String/i/center.md)
- [chars](../method/String/i/chars.md)
- [chomp](../method/String/i/chomp.md)
- [chomp!](../method/String/i/chomp=21.md)
- [chop](../method/String/i/chop.md)
- [chop!](../method/String/i/chop=21.md)
- [chr](../method/String/i/chr.md)
- [clear](../method/String/i/clear.md)
- [codepoints](../method/String/i/codepoints.md)
- [count](../method/String/i/count.md)
- [crypt](../method/String/i/crypt.md)
- [delete](../method/String/i/delete.md)
- [delete!](../method/String/i/delete=21.md)
- [delete_prefix](../method/String/i/delete_prefix.md)
- [delete_prefix!](../method/String/i/delete_prefix=21.md)
- [delete_suffix](../method/String/i/delete_suffix.md)
- [delete_suffix!](../method/String/i/delete_suffix=21.md)
- [downcase](../method/String/i/downcase.md)
- [downcase!](../method/String/i/downcase=21.md)
- [dump](../method/String/i/dump.md)
- [each_byte](../method/String/i/each_byte.md)
- [each_char](../method/String/i/each_char.md)
- [each_codepoint](../method/String/i/each_codepoint.md)
- [each_grapheme_cluster](../method/String/i/each_grapheme_cluster.md)
- [each_line](../method/String/i/each_line.md)
- [empty?](../method/String/i/empty=3f.md)
- [encode](../method/String/i/encode.md)
- [encode!](../method/String/i/encode=21.md)
- [encoding](../method/String/i/encoding.md)
- [end_with?](../method/String/i/end_with=3f.md)
- [eql?](../method/String/i/eql=3f.md)
- [ext](../method/String/i/ext.md)
- [force_encoding](../method/String/i/force_encoding.md)
- [getbyte](../method/String/i/getbyte.md)
- [grapheme_clusters](../method/String/i/grapheme_clusters.md)
- [gsub](../method/String/i/gsub.md)
- [gsub!](../method/String/i/gsub=21.md)
- [hash](../method/String/i/hash.md)
- [hex](../method/String/i/hex.md)
- [include?](../method/String/i/include=3f.md)
- [index](../method/String/i/index.md)
- [insert](../method/String/i/insert.md)
- [inspect](../method/String/i/inspect.md)
- [intern](../method/String/i/intern.md)
- [to_sym](../method/String/i/to_sym.md)
- [iseuc](../method/String/i/iseuc.md)
- [isjis](../method/String/i/isjis.md)
- [issjis](../method/String/i/issjis.md)
- [isutf8](../method/String/i/isutf8.md)
- [kconv](../method/String/i/kconv.md)
- [length](../method/String/i/length.md)
- [size](../method/String/i/size.md)
- [lines](../method/String/i/lines.md)
- [ljust](../method/String/i/ljust.md)
- [lstrip](../method/String/i/lstrip.md)
- [lstrip!](../method/String/i/lstrip=21.md)
- [match](../method/String/i/match.md)
- [match?](../method/String/i/match=3f.md)
- [next](../method/String/i/next.md)
- [succ](../method/String/i/succ.md)
- [next!](../method/String/i/next=21.md)
- [succ!](../method/String/i/succ=21.md)
- [oct](../method/String/i/oct.md)
- [ord](../method/String/i/ord.md)
- [parse_csv](../method/String/i/parse_csv.md)
- [partition](../method/String/i/partition.md)
- [pathmap](../method/String/i/pathmap.md)
- [prepend](../method/String/i/prepend.md)
- [replace](../method/String/i/replace.md)
- [reverse](../method/String/i/reverse.md)
- [reverse!](../method/String/i/reverse=21.md)
- [rindex](../method/String/i/rindex.md)
- [rjust](../method/String/i/rjust.md)
- [rpartition](../method/String/i/rpartition.md)
- [rstrip](../method/String/i/rstrip.md)
- [rstrip!](../method/String/i/rstrip=21.md)
- [scan](../method/String/i/scan.md)
- [scrub](../method/String/i/scrub.md)
- [scrub!](../method/String/i/scrub=21.md)
- [setbyte](../method/String/i/setbyte.md)
- [shellescape](../method/String/i/shellescape.md)
- [shellsplit](../method/String/i/shellsplit.md)
- [slice!](../method/String/i/slice=21.md)
- [split](../method/String/i/split.md)
- [squeeze](../method/String/i/squeeze.md)
- [squeeze!](../method/String/i/squeeze=21.md)
- [start_with?](../method/String/i/start_with=3f.md)
- [strip](../method/String/i/strip.md)
- [strip!](../method/String/i/strip=21.md)
- [sub](../method/String/i/sub.md)
- [sub!](../method/String/i/sub=21.md)
- [sum](../method/String/i/sum.md)
- [swapcase](../method/String/i/swapcase.md)
- [swapcase!](../method/String/i/swapcase=21.md)
- [to_c](../method/String/i/to_c.md)
- [to_d](../method/String/i/to_d.md)
- [to_f](../method/String/i/to_f.md)
- [to_i](../method/String/i/to_i.md)
- [to_r](../method/String/i/to_r.md)
- [to_s](../method/String/i/to_s.md)
- [to_str](../method/String/i/to_str.md)
- [toeuc](../method/String/i/toeuc.md)
- [tojis](../method/String/i/tojis.md)
- [tolocale](../method/String/i/tolocale.md)
- [tosjis](../method/String/i/tosjis.md)
- [toutf16](../method/String/i/toutf16.md)
- [toutf32](../method/String/i/toutf32.md)
- [toutf8](../method/String/i/toutf8.md)
- [tr](../method/String/i/tr.md)
- [tr!](../method/String/i/tr=21.md)
- [tr_s](../method/String/i/tr_s.md)
- [tr_s!](../method/String/i/tr_s=21.md)
- [undump](../method/String/i/undump.md)
- [unicode_normalize](../method/String/i/unicode_normalize.md)
- [unicode_normalize!](../method/String/i/unicode_normalize=21.md)
- [unicode_normalized?](../method/String/i/unicode_normalized=3f.md)
- [unpack](../method/String/i/unpack.md)
- [unpack1](../method/String/i/unpack1.md)
- [upcase](../method/String/i/upcase.md)
- [upcase!](../method/String/i/upcase=21.md)
- [upto](../method/String/i/upto.md)
- [valid_encoding?](../method/String/i/valid_encoding=3f.md)

## Protected Instance Methods

- [pathmap_explode](../method/String/i/pathmap_explode.md)
- [pathmap_partial](../method/String/i/pathmap_partial.md)
- [pathmap_replace](../method/String/i/pathmap_replace.md)
