# CSV.new

### def CSV.new(data, options = Hash.new) -> CSV

このメソッドは CSV ファイルを読み込んだり、書き出したりするために
[String](../../../class/String.md) か [IO](../../../class/IO.md) のインスタンスをラップします。

ラップされた文字列の先頭から読み込むことになります。
文字列に追記したい場合は [CSV.generate](../../../method/CSV/s/generate.md) を使用してください。
他の位置から処理したい場合はあらかじめそのように設定した [StringIO](../../../class/StringIO.md) を渡してください。

- **param** `data` -- [String](../../../class/String.md) か [IO](../../../class/IO.md) のインスタンスを指定します。
            [String](../../../class/String.md) のインスタンスを指定した場合、[CSV#string](../../../method/CSV/i/string.md) を使用して後からデータを取り出すことが出来ます。

- **param** `options` -- CSV をパースするためのオプションをハッシュで指定します。
               パフォーマンス上の理由でインスタンスメソッドではオプションを上書きすることが出来ないので、上書きしたい場合は必ずここで上書きするようにしてください。

- **`:col_sep`**:
  フィールドの区切り文字列を指定します。この文字列はパースする前にデータのエンコーディングに変換されます。
- **`:row_sep`**:
  行区切りの文字列を指定します。:auto という特別な値をセットできます。
  :auto を指定した場合データから自動的に行区切りの文字列を見つけ出します。このときデータの先頭から次の "\r\n", "\n", "\r" の並びまでを読みます。
  この並びはクオートされたフィールドの中にあっても選ばれます(そこでも同じ行末が使われているものとみなします)。
  どの並びも見つからなかった場合、`data` が [ARGF](../../../class/ARGF.md)・[Object::STDIN](../../../method/Object/c/STDIN.md)・[Object::STDOUT](../../../method/Object/c/STDOUT.md)・[Object::STDERR](../../../method/Object/c/STDERR.md) の場合、
  またはストリームが出力専用の場合は、デフォルトの [m:$INPUT_RECORD_SEPARATOR]([m:$/])を使います。
  自動検出には多少の時間がかかるので、速度が重要な場合は明示的に指定してください。
  また、Windows でこの機能を使う場合は [IO](../../../class/IO.md) オブジェクトをバイナリモードで開いてください。
  改行の変換によって、先読みする前の位置に戻す処理に問題が起きることがあるためです。
  指定した文字列はパースする前にデータのエンコーディングに変換されます。
- **`:quote_char`**:
  フィールドをクオートする文字を指定します。長さ 1 の文字列でなければなりません。
  正しいダブルクオートではなく間違ったシングルクオートを使用しているアプリケーションで便利です。
  この文字を 2 つ続けたものは、常にエスケープされたクオート文字とみなします。
  この文字列はパースする前にデータのエンコーディングに変換されます。
- **`:field_size_limit`**:
  `:max_field_size` の古い形で、非推奨です。`:max_field_size` を指定しなかった場合、`:max_field_size` に `field_size_limit - 1` を指定したものとして扱います。
- **`:max_field_size`**:
  フィールドの最大の長さ(文字数)を指定します。これより長いフィールドがあると [CSV::MalformedCSVError](../../../class/CSV=3a=3aMalformedCSVError.md) が発生します。デフォルトは nil(制限なし)です。
- **`:converters`**:
  [CSV::Converters](../../../method/CSV/c/Converters.md) から取り出した名前の配列です。変換器が一つだけの場合は配列に格納する必要はありません。
  全ての組み込みの変換器は、値を変換する前に UTF-8 にエンコーディング変換を試みます。エンコーディング変換に失敗した場合はフィールドは変換されません。
- **`:unconverted_fields`**:
  真をセットすると `CSV::Row#unconverted_fields` という変換前のフィールドを返すメソッドを全ての行に追加します。headers オプションによって追加したヘッダはフィールドではないので
  `CSV::Row#unconverted_fields` は空の配列を返します。
- **`:headers`**:
  :first_row というシンボルか真を指定すると、CSV ファイルの一行目をヘッダとして扱います。
  配列を指定するとそれをヘッダとして扱います。文字列を指定すると [CSV.parse_line](../../../method/CSV/s/parse_line.md) を使用してパースした結果をヘッダとして扱います。このとき、:col_sep, :row_sep, :quote_char
  はこのインスタンスと同じものを使用します。この設定は [CSV#shift](../../../method/CSV/i/shift.md)
  の返り値を配列のかわりに [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスに変更します。
  [CSV#read](../../../method/CSV/i/read.md) の返り値を配列の配列のかわりに [CSV::Table](../../../class/CSV=3a=3aTable.md) のインスタンスに変更します。
- **`:return_headers`**:
  偽を指定すると、ヘッダ行を無視します。真を指定すると、ヘッダ行をヘッダと値が同一の [CSV::Row](../../../class/CSV=3a=3aRow.md) のインスタンスとして返します。
- **`:write_headers`**:
  真を指定して :headers にも値をセットすると、ヘッダを出力します。
- **`:header_converters`**:
  :converters オプションに似ていますが、ヘッダ専用の変換器を定義します。
  全ての組み込みの変換器は、値を変換する前に UTF-8 にエンコーディング変換を試みます。変換後のヘッダの文字エンコーディングと、UTF-8 に変換できなかった場合の例外については [CSV::HeaderConverters](../../../method/CSV/c/HeaderConverters.md) を参照してください。
- **`:skip_blanks`**:
  真を指定すると、空行を読み飛ばします。
- **`:force_quotes`**:
  真を指定すると、全てのフィールドを作成時にクオートします。
- **`:skip_lines`**:
  指定した正規表現にマッチしたそれぞれの行をコメントとして読み飛ばします。

- **raise** `CSV::MalformedCSVError` -- 不正な CSV をパースしようとしたときに発生します。
- **raise** `CSV::InvalidEncodingError` -- 入力に不正なバイト列が含まれていたときに発生します。[CSV::MalformedCSVError](../../../class/CSV=3a=3aMalformedCSVError.md) のサブクラスです。

```ruby title="例: ファイルの読み込み"
require "csv"

users =<<-EOS
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
EOS

File.write("test.csv", users)

File.open("test.csv", "r") do |f|
  csv = CSV.new(f, headers: true)
  p csv.class # => CSV
  p csv.first # => #<CSV::Row "id":"1" "first name":"taro" "last name":"tanaka" "age":"20">
end
```

```ruby title="例 文字列の読み込み"
require "csv"

users =<<-EOS
id|first name|last name|age
1|taro|tanaka|20
2|jiro|suzuki|18
3|ami|sato|19
4|yumi|adachi|21
EOS

csv = CSV.new(users, headers: true, col_sep: "|")
p csv.class # => CSV
p csv.first # => #<CSV::Row "id":"1" "first name":"taro" "last name":"tanaka" "age":"20">
```

- **SEE** [CSV::DEFAULT_OPTIONS](../../../method/CSV/c/DEFAULT_OPTIONS.md), [CSV.open](../../../method/CSV/s/open.md)
