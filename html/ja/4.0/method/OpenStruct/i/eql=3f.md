# OpenStruct#eql?

### def eql?(other) -> bool

self と other が等しい場合に true を返します。そうでない場合は false を返します。

具体的には other が [OpenStruct](../../../class/OpenStruct.md) オブジェクトかそのサブクラスでかつ、
self の各要素を保持した内部の [Hash](../../../class/Hash.md) が eql? で比較して等しい場合に
true を返します。

- **param** `other` -- 比較対象のオブジェクトを指定します。
