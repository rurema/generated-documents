# OpenSSL::ASN1?.traverse

### module_function def traverse(der) {|depth, off, hlen, len, constructed, tag_class, tag| ...} -> nil

DER形式の文字列を解析し、そこに含まれる ASN.1 の値のプロパティを引数として与えられたブロックを呼びだします。

[OpenSSL::ASN1?.decode_all](../../../method/OpenSSL=3a=3aASN1/m/decode_all.md) のように、文字列に含まれる全ての ASN.1 オブジェクトのインスタンスを解析します。

ブロックに渡される引数は以下の通りです。
  - depth: 再帰の深さ
  - off: 対象の値をエンコードした文字列の der の先頭からのオフセット
  - hlen: エンコードされたデータのヘッダのバイト数
  - len: エンコードされたデータの値フィールドのバイト数
  - constructed:対象の ASN.1 値が Constructive なら真
  - tag_class: タグクラスを表す [Symbol](../../../class/Symbol.md) オブジェクト
    (:UNIVERSAL, :CONTEXT_SPECIFIC, :APPLICATION, :PRIVATE のいずれか)
  - tag: タグ番号

- **param** `der` -- DER形式の文字列
- **raise** `OpenSSL::ASN1::ASN1Error` -- 解析に失敗した場合に発生します
- **SEE** [OpenSSL::ASN1?.decode](../../../method/OpenSSL=3a=3aASN1/m/decode.md)
