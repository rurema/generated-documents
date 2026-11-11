# class CSV < Object

このクラスは CSV ファイルやデータに対する完全なインターフェイスを提供します。

### 読み込み

```ruby
require "csv"

csv_text = <<~CSV_TEXT
  Ruby,1995
  Rust,2010
CSV_TEXT

IO.write "sample.csv", csv_text

# ファイルから一行ずつ
CSV.foreach("sample.csv") do |row|
  p row
end
# => ["Ruby", "1995"]
#    ["Rust", "2010"]

# ファイルから一度に
p CSV.read("sample.csv")
# => [["Ruby", "1995"], ["Rust", "2010"]]

# 文字列から一行ずつ
CSV.parse(csv_text) do |row|
  p row
end
# => ["Ruby", "1995"]
#    ["Rust", "2010"]

# 文字列から一度に
p CSV.parse(csv_text)
# => [["Ruby", "1995"], ["Rust", "2010"]]
```

### 書き込み

```ruby
require 'csv'

# ファイルへ書き込み
CSV.open("path/to/file.csv", "wb") do |csv|
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
  # ...
end

# 文字列へ書き込み
csv_string = CSV.generate do |csv|
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
  # ...
end
```

### 一行変換

```ruby
require 'csv'

csv_string = ["CSV", "data"].to_csv   # => "CSV,data"
csv_array  = "CSV,String".parse_csv   # => ["CSV", "String"]
```

### ショートカット

```ruby
require 'csv'

CSV             { |csv_out| csv_out << %w{my data here} }  # to $stdout
CSV(csv = "")   { |csv_str| csv_str << %w{my data here} }  # to a String
CSV($stderr)    { |csv_err| csv_err << %w{my data here} }  # to $stderr
```

### CSV と文字エンコーディング (M17n or Multilingualization)

CSV のパーサは、読み込み元または書き込み先の [IO](../class/IO.md) や [String](../class/String.md) のエンコーディングのまま動作します。
データは (Ruby にエンコーディングを変換させない限り) エンコーディングを変換されず、そのエンコーディングのままパースされます。
そのため、CSV が返す [Array](../class/Array.md) や [CSV::Row](../class/CSV=3a=3aRow.md) の文字列は、データと同じエンコーディングになります。
これは、パーサ自身をデータのエンコーディングに変換することで実現しています。

複数のエンコーディングに対応するために、いくつかの値はエンコーディングの変換が必要です。
たとえば `:col_sep`、`:row_sep`、`:quote_char` は、データのエンコーディングに合わせて変換されます。
このため、CSV のデフォルト値はデータのエンコーディングを意識せずにそのまま使えます。
この変換を避けたい場合は、これらの値を対象のエンコーディングで直接指定してください。

CSV のパーサの中核部分はエンコーディングに依存しませんが、一部の機能は依存します。
たとえば、組み込みの変換器は、すべてのエンコーディングでネイティブに変換するのは難しいため、変換の前にデータを UTF-8 に変換しようとします。
この変換を避けたい場合は、使用するエンコーディングに対応した独自の変換器を指定してください。

実際に必要な作業は単純で、CSV に渡す [IO](../class/IO.md) や [String](../class/String.md) に正しいエンコーディングが設定されていれば、そのまま動作します。
[IO](../class/IO.md) を開く CSV のメソッド ([CSV.foreach](../method/CSV/s/foreach.md)、[CSV.open](../method/CSV/s/open.md)、[CSV.read](../method/CSV/s/read.md)、[CSV.readlines](../method/CSV/s/readlines.md)) では、エンコーディングを指定できます。

ただし、ASCII 互換でないエンコーディングの [String](../class/String.md) に CSV を生成するときは少し事情が異なります。
この場合は CSV が準備のために参照できるデータがないため、ほとんどの場合は目的のエンコーディングを明示的に指定する必要があります。
なお、[CSV.generate_line](../method/CSV/s/generate_line.md) や [Array#to_csv](../method/Array/i/to_csv.md) では、出力する行のフィールドからエンコーディングを推測します。

## Class Methods

- [filter](../method/CSV/s/filter.md)
- [foreach](../method/CSV/s/foreach.md)
- [generate](../method/CSV/s/generate.md)
- [generate_line](../method/CSV/s/generate_line.md)
- [instance](../method/CSV/s/instance.md)
- [new](../method/CSV/s/new.md)
- [open](../method/CSV/s/open.md)
- [parse](../method/CSV/s/parse.md)
- [parse_line](../method/CSV/s/parse_line.md)
- [read](../method/CSV/s/read.md)
- [readlines](../method/CSV/s/readlines.md)
- [table](../method/CSV/s/table.md)

## Instance Methods

- [<<](../method/CSV/i/=3c=3c.md)
- [add_row](../method/CSV/i/add_row.md)
- [puts](../method/CSV/i/puts.md)
- [binmode](../method/CSV/i/binmode.md)
- [binmode?](../method/CSV/i/binmode=3f.md)
- [close](../method/CSV/i/close.md)
- [close_read](../method/CSV/i/close_read.md)
- [close_write](../method/CSV/i/close_write.md)
- [closed?](../method/CSV/i/closed=3f.md)
- [col_sep](../method/CSV/i/col_sep.md)
- [convert](../method/CSV/i/convert.md)
- [converters](../method/CSV/i/converters.md)
- [each](../method/CSV/i/each.md)
- [encoding](../method/CSV/i/encoding.md)
- [eof](../method/CSV/i/eof.md)
- [eof?](../method/CSV/i/eof=3f.md)
- [external_encoding](../method/CSV/i/external_encoding.md)
- [fcntl](../method/CSV/i/fcntl.md)
- [field_size_limit](../method/CSV/i/field_size_limit.md)
- [fileno](../method/CSV/i/fileno.md)
- [to_i](../method/CSV/i/to_i.md)
- [flock](../method/CSV/i/flock.md)
- [flush](../method/CSV/i/flush.md)
- [force_quotes?](../method/CSV/i/force_quotes=3f.md)
- [fsync](../method/CSV/i/fsync.md)
- [gets](../method/CSV/i/gets.md)
- [readline](../method/CSV/i/readline.md)
- [shift](../method/CSV/i/shift.md)
- [header_convert](../method/CSV/i/header_convert.md)
- [header_converters](../method/CSV/i/header_converters.md)
- [header_row?](../method/CSV/i/header_row=3f.md)
- [headers](../method/CSV/i/headers.md)
- [inspect](../method/CSV/i/inspect.md)
- [internal_encoding](../method/CSV/i/internal_encoding.md)
- [ioctl](../method/CSV/i/ioctl.md)
- [isatty](../method/CSV/i/isatty.md)
- [tty?](../method/CSV/i/tty=3f.md)
- [lineno](../method/CSV/i/lineno.md)
- [max_field_size](../method/CSV/i/max_field_size.md)
- [path](../method/CSV/i/path.md)
- [pid](../method/CSV/i/pid.md)
- [pos](../method/CSV/i/pos.md)
- [tell](../method/CSV/i/tell.md)
- [pos=](../method/CSV/i/pos=3d.md)
- [quote_char](../method/CSV/i/quote_char.md)
- [read](../method/CSV/i/read.md)
- [readlines](../method/CSV/i/readlines.md)
- [reopen](../method/CSV/i/reopen.md)
- [return_headers?](../method/CSV/i/return_headers=3f.md)
- [rewind](../method/CSV/i/rewind.md)
- [row_sep](../method/CSV/i/row_sep.md)
- [seek](../method/CSV/i/seek.md)
- [skip_blanks?](../method/CSV/i/skip_blanks=3f.md)
- [stat](../method/CSV/i/stat.md)
- [string](../method/CSV/i/string.md)
- [sync](../method/CSV/i/sync.md)
- [sync=](../method/CSV/i/sync=3d.md)
- [to_io](../method/CSV/i/to_io.md)
- [truncate](../method/CSV/i/truncate.md)
- [unconverted_fields?](../method/CSV/i/unconverted_fields=3f.md)
- [write_headers?](../method/CSV/i/write_headers=3f.md)

## Constants

- [ConverterEncoding](../method/CSV/c/ConverterEncoding.md)
- [Converters](../method/CSV/c/Converters.md)
- [DEFAULT_OPTIONS](../method/CSV/c/DEFAULT_OPTIONS.md)
- [DateMatcher](../method/CSV/c/DateMatcher.md)
- [DateTimeMatcher](../method/CSV/c/DateTimeMatcher.md)
- [HeaderConverters](../method/CSV/c/HeaderConverters.md)
- [VERSION](../method/CSV/c/VERSION.md)
