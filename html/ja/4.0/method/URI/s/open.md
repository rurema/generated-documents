# URI.open

### def URI.open(name, mode = 'r', perm = nil, options = {})                -> StringIO | Tempfile | IO
### def URI.open(name, mode = 'r', perm = nil, options = {}) {|ouri| ...}   -> object

name が http:// や https://、ftp:// で始まっている文字列なら URI のリソースを取得した上で [StringIO](../../../class/StringIO.md) オブジェクトまたは [Tempfile](../../../class/Tempfile.md) オブジェクトとして返します。
返されるオブジェクトは [OpenURI::Meta](../../../class/OpenURI=3a=3aMeta.md) モジュールで extend されています。

name に open メソッドが定義されている場合は、*rest を引数として渡し
name.open(*rest, &block) のように name の open メソッドが呼ばれます。

これ以外の場合は、name はファイル名として扱われ、従来の
[Kernel?.open](../../../method/Kernel/m/open.md)(name, *rest) が呼ばれます。

ブロックを与えた場合は上の場合と同様、name が http:// や https://、ftp:// で始まっている文字列なら URI のリソースを取得した上で [StringIO](../../../class/StringIO.md) オブジェクトまたは [Tempfile](../../../class/Tempfile.md) オブジェクトを引数としてブロックを評価します。後は同様です。
引数のオブジェクトは [OpenURI::Meta](../../../class/OpenURI=3a=3aMeta.md) モジュールで extend されています。

- **param** `name` -- オープンしたいリソースを文字列で与えます。

- **param** `mode` -- モードを文字列で与えます。[Kernel?.open](../../../method/Kernel/m/open.md) の mode_enc とおおむね同じですが、外部エンコーディングの指定(ext_enc)は有効な一方、内部エンコーディングの指定
             (ext_enc:int_enc の int_enc)は無視されます。内部エンコーディングへの変換が必要な場合は、読み込んだ文字列を [String#encode](../../../method/String/i/encode.md) で変換してください
             (返り値のオブジェクトはレスポンスの大きさによって [StringIO](../../../class/StringIO.md) にも
             [Tempfile](../../../class/Tempfile.md) ベースの IO にもなり、[IO#set_encoding](../../../method/IO/i/set_encoding.md) による内部エンコーディングへの変換は [StringIO](../../../class/StringIO.md) では行われないためです)。

```ruby title="例"
require 'open-uri'

# 外部エンコーディングとして cp932 を指定し、
# 読み込んだ文字列を String#encode で UTF-8 に変換する
URI.open('http://example.com/', 'r:cp932') do |f|
  f.read.encode('UTF-8', invalid: :replace, undef: :replace)
end
```

- **param** `perm` -- [man:open(2)] の第 3 引数のように、ファイルを生成する場合のファイルのパーミッションを整数で指定します。[Kernel?.open](../../../method/Kernel/m/open.md) と同じです

- **param** `options` -- ハッシュを与えます。詳しくは [OpenURI.open_uri](../../../method/OpenURI/s/open_uri.md) を参照してください。

- **raise** `OpenURI::HTTPError` -- 対象となる URI のスキームが http または https であり、かつリソースの取得に失敗したときに発生します。

- **raise** `Net::FTPError` -- 対象となる URI のスキームが ftp であり、かつリソースの取得に失敗した時に
                     [Net::FTPError](../../../class/Net=3a=3aFTPError.md) のサブクラスが発生します。詳しくは [net/ftp](../../../library/net=2fftp.md)
                     を参照して下さい。

- **SEE** [Kernel?.open](../../../method/Kernel/m/open.md), [OpenURI.open_uri](../../../method/OpenURI/s/open_uri.md)
