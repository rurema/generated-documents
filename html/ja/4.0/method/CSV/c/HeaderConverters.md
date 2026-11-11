# CSV::HeaderConverters

### const HeaderConverters -> Hash

このハッシュは名前でアクセスできる組み込みのヘッダ用変換器を保存しています。

[CSV#header_convert](../../../method/CSV/i/header_convert.md) で使用する変換器として使用できます。
また [CSV.new](../../../method/CSV/s/new.md) のオプションとして使用することもできます。

- **`:downcase`**:
  ヘッダの文字列に対して [String#downcase](../../../method/String/i/downcase.md) を呼び出します。
- **`:symbol`**:
  ヘッダの文字列を小文字に変換してから、英数字・アンダースコア・空白文字 (`\s`) 以外の文字を削除し、前後の空白文字を取り除いて、残った空白文字の並びをアンダースコアに置換します。最後に [String#to_sym](../../../method/String/i/to_sym.md) を呼び出します。英数字は ASCII の範囲の文字だけなので、日本語などの文字は削除されます。
- **`:symbol_raw`**:
  ヘッダの文字列に対して [String#to_sym](../../../method/String/i/to_sym.md) を呼び出します。`:symbol` と違い、小文字への変換や文字の削除はしません。

日本語だけのヘッダは `:symbol` では `:""` になります。そのようなヘッダには `:symbol_raw` を使ってください。

```ruby title="例 日本語のヘッダをシンボルに変換する"
require "csv"

data = "名前,First Name!\n太郎,1\n"
p CSV.parse(data, headers: true, header_converters: :symbol).headers     # => [:"", :first_name]
p CSV.parse(data, headers: true, header_converters: :symbol_raw).headers # => [:名前, :"First Name!"]
```

全ての組み込みのヘッダ用変換器は、実際に変換する前にヘッダのデータの文字エンコーディングを UTF-8 に変換します。`:downcase` が返すヘッダは UTF-8 に変換した文字列のままで、元の文字エンコーディングには戻しません。ヘッダの文字エンコーディングを UTF-8 に変換できなかった場合は、[String#encode](../../../method/String/i/encode.md) の例外([Encoding::UndefinedConversionError](../../../class/Encoding=3a=3aUndefinedConversionError.md) など)が発生します。

```ruby title="例 Shift_JIS のヘッダを変換する"
require "csv"

data = "名前,Count\n太郎,1\n".encode("Shift_JIS")
table = CSV.parse(data, headers: true, header_converters: :downcase)
p table.headers                 # => ["名前", "count"]
p table.headers.map(&:encoding) # => [#<Encoding:UTF-8>, #<Encoding:UTF-8>]
```

このハッシュは [Object#freeze](../../../method/Object/i/freeze.md) されていないので、ユーザは自由に値を追加することが出来ます。

複数の変換器を持つ要素を追加するときは、値に名前の配列を指定する必要があります。この要素の値には他の複数の変換器を持つ要素の名前を指定することもできます。
