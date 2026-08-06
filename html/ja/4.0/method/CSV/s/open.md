# CSV.open

### def CSV.open(filename, mode = "rb", options = Hash.new){|csv| ... } -> nil
### def CSV.open(filename, mode = "rb", options = Hash.new) -> CSV
### def CSV.open(filename, options = Hash.new){|csv| ... } -> nil
### def CSV.open(filename, options = Hash.new) -> CSV

このメソッドは [IO](../../../class/IO.md) オブジェクトをオープンして [CSV](../../../class/CSV.md) でラップします。
これは CSV ファイルを書くための主要なインターフェイスとして使うことを意図しています。

このメソッドは [IO.open](../../../method/IO/s/open.md) と同じように動きます。ブロックが与えられた場合はブロックに [CSV](../../../class/CSV.md) オブジェクトを渡し、ブロック終了時にそれをクローズします。
ブロックが与えられなかった場合は [CSV](../../../class/CSV.md) オブジェクトを返します。

データが [Encoding.default_external](../../../method/Encoding/s/default_external.md) と異なる場合は、mode にエンコーディングを指定する文字列を埋め込まなければなりません。データをどのように解析するか決定するために CSV ライブラリはユーザが mode に指定したエンコーディングをチェックします。"rb:UTF-32BE:UTF-8" のように mode を指定すると UTF-32BE のデータを読み込んでUTF-8 に変換してから解析します。

また "rb:BOM|UTF-8" のように mode を指定すると BOM を自動的に取り除きます。

CSV オブジェクトは多くのメソッドを [IO](../../../class/IO.md) や [File](../../../class/File.md) に委譲します。

  - [IO#binmode](../../../method/IO/i/binmode.md)
  - [IO#binmode?](../../../method/IO/i/binmode=3f.md)
  - [IO#close](../../../method/IO/i/close.md)
  - [IO#close_read](../../../method/IO/i/close_read.md)
  - [IO#close_write](../../../method/IO/i/close_write.md)
  - [IO#closed?](../../../method/IO/i/closed=3f.md)
  - [IO#eof](../../../method/IO/i/eof.md)
  - [IO#eof?](../../../method/IO/i/eof=3f.md)
  - [IO#external_encoding](../../../method/IO/i/external_encoding.md)
  - [IO#fcntl](../../../method/IO/i/fcntl.md)
  - [IO#fileno](../../../method/IO/i/fileno.md)
  - [File#flock](../../../method/File/i/flock.md)
  - [IO#flush](../../../method/IO/i/flush.md)
  - [IO#fsync](../../../method/IO/i/fsync.md)
  - [IO#internal_encoding](../../../method/IO/i/internal_encoding.md)
  - [IO#ioctl](../../../method/IO/i/ioctl.md)
  - [IO#isatty](../../../method/IO/i/isatty.md)
  - [File#path](../../../method/File/i/path.md)
  - [IO#pid](../../../method/IO/i/pid.md)
  - [IO#pos](../../../method/IO/i/pos.md)
  - [IO#pos=](../../../method/IO/i/pos=3d.md)
  - [IO#reopen](../../../method/IO/i/reopen.md)
  - [IO#seek](../../../method/IO/i/seek.md)
  - [IO#stat](../../../method/IO/i/stat.md)
  - [StringIO#string](../../../method/StringIO/i/string.md)
  - [IO#sync](../../../method/IO/i/sync.md)
  - [IO#sync=](../../../method/IO/i/sync=3d.md)
  - [IO#tell](../../../method/IO/i/tell.md)
  - [IO#to_i](../../../method/IO/i/to_i.md)
  - [IO#to_io](../../../method/IO/i/to_io.md)
  - [File#truncate](../../../method/File/i/truncate.md)
  - [IO#tty?](../../../method/IO/i/tty=3f.md)

- **param** `filename` -- ファイル名、または [StringIO](../../../class/StringIO.md) オブジェクトを指定します。[StringIO](../../../class/StringIO.md) を渡した場合は、読み込み・書き込みともにその [StringIO](../../../class/StringIO.md) に対して行われます。

- **param** `mode` -- [IO.open](../../../method/IO/s/open.md) に指定できるものと同じものを指定できます。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。

```ruby title="例 読み取り・ブロック指定なし"
require "csv"

File.write("test.csv", <<CSV)
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
CSV
csv = CSV.open("test.csv", headers: true)
p csv.class # => CSV
p csv.first # => #<CSV::Row "id":"1" "first name":"taro" "last name":"tanaka" "age":"20">
```

```ruby title="例 読み取り・ブロック指定あり"
require "csv"

users =<<-EOS
id,first name,last name,age
1,taro,tanaka,20
2,jiro,suzuki,18
3,ami,sato,19
4,yumi,adachi,21
EOS

File.write("test.csv", users)
CSV.open("test.csv", headers: true) do |csv|
  p csv.class # => CSV
  p csv.first # => #<CSV::Row "id":"1" "first name":"taro" "last name":"tanaka" "age":"20">
end
```

```ruby title="例 書き込み・ブロック指定あり"
require "csv"

CSV.open("test.csv", "w") do |csv|
  csv << ["id", "first name", "last name", "age"]
  csv << ["1", "taro", "tanaka", "20"]
  csv << ["2", "jiro", "suzuki", "18"]
  csv << ["3", "ami", "sato", "19"]
  csv << ["4", "yumi", "adachi", "21"]
end
print File.read("test.csv")

# => id,first name,last name,age
#    1,taro,tanaka,20
#    2,jiro,suzuki,18
#    3,ami,sato,19
#    4,yumi,adachi,21
```

- **SEE** [CSV.new](../../../method/CSV/s/new.md), [IO.open](../../../method/IO/s/open.md)
