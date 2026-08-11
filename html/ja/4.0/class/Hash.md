# class Hash < Object

ハッシュテーブル(連想配列とも呼ぶ)のクラスです。ハッシュは任意の種類のオブジェクト(キー)から任意の種類のオブジェクト(値)への関連づけを行うことができます。

ハッシュ生成は多くの場合以下のようなリテラル ([spec/literal#hash](../doc/spec=2fliteral.md#hash)) で行われます。

```text
{a => b, ... }   # aはキー、bは値となる
{s: b , ... }    # { :s => b, ... } と同じ。キーがシンボルの場合の省略した書き方
{"a+": b , ... } # { :"a+" => b, ... } と同じ。上の表現に空白や記号を含めたい場合
```

キーには任意の種類のオブジェクトを用いることができますが、以下の2つのメソッドが適切に定義してある必要があります。
  - [Object#hash](../method/Object/i/hash.md) ハッシュの格納に用いられるハッシュ値の計算
  - [Object#eql?](../method/Object/i/eql=3f.md) キーの同一性判定

破壊的操作によってキーとして与えたオブジェクトの内容が変化し、[Object#hash](../method/Object/i/hash.md) の返す値が変わるとハッシュから値が取り出せなくなりますから、
[Array](../class/Array.md)、[Hash](../class/Hash.md)
などのインスタンスはキーに向きません。[Hash#rehash](../method/Hash/i/rehash.md) を参照。

ただし、 更新不可 ([Object#frozen?](../method/Object/i/frozen=3f.md) が true) では無い文字列をキーとして与えた場合は、文字列をコピーし、コピーを更新不可に設定 ([Object#freeze](../method/Object/i/freeze.md)) してキーとして使用します。この為、キーとして使われている文字列を更新しようとすると例外
[FrozenError](../class/FrozenError.md)
が発生するので rehash を呼ぶ必要性は生じません。

ハッシュにはデフォルト値を設定できます。存在しないキーを探索したときに返す値で、未設定時は nil です。
デフォルト値には値形式とブロック形式があります。
実際にデフォルト値がどのように扱われるかは各メソッドの説明を参照してください。

ハッシュに含まれる要素の順序が保持されるようになりました。
ハッシュにキーが追加された順序で列挙します。

## Class Methods

- [\[\]](../method/Hash/s/=5b=5d.md)
- [new](../method/Hash/s/new.md)
- [ruby2_keywords_hash](../method/Hash/s/ruby2_keywords_hash.md)
- [ruby2_keywords_hash?](../method/Hash/s/ruby2_keywords_hash=3f.md)
- [try_convert](../method/Hash/s/try_convert.md)

## Instance Methods

- [<](../method/Hash/i/=3c.md)
- [<=](../method/Hash/i/=3c=3d.md)
- [==](../method/Hash/i/=3d=3d.md)
- [===](../method/Hash/i/=3d=3d=3d.md)
- [eql?](../method/Hash/i/eql=3f.md)
- [>](../method/Hash/i/=3e.md)
- [>=](../method/Hash/i/=3e=3d.md)
- [\[\]](../method/Hash/i/=5b=5d.md)
- [\[\]=](../method/Hash/i/=5b=5d=3d.md)
- [store](../method/Hash/i/store.md)
- [assoc](../method/Hash/i/assoc.md)
- [clear](../method/Hash/i/clear.md)
- [clone](../method/Hash/i/clone.md)
- [dup](../method/Hash/i/dup.md)
- [compact](../method/Hash/i/compact.md)
- [compact!](../method/Hash/i/compact=21.md)
- [compare_by_identity](../method/Hash/i/compare_by_identity.md)
- [compare_by_identity?](../method/Hash/i/compare_by_identity=3f.md)
- [default](../method/Hash/i/default.md)
- [default=](../method/Hash/i/default=3d.md)
- [default_proc](../method/Hash/i/default_proc.md)
- [default_proc=](../method/Hash/i/default_proc=3d.md)
- [delete](../method/Hash/i/delete.md)
- [delete_if](../method/Hash/i/delete_if.md)
- [reject!](../method/Hash/i/reject=21.md)
- [dig](../method/Hash/i/dig.md)
- [each](../method/Hash/i/each.md)
- [each_pair](../method/Hash/i/each_pair.md)
- [each_key](../method/Hash/i/each_key.md)
- [each_value](../method/Hash/i/each_value.md)
- [empty?](../method/Hash/i/empty=3f.md)
- [equal?](../method/Hash/i/equal=3f.md)
- [except](../method/Hash/i/except.md)
- [fetch](../method/Hash/i/fetch.md)
- [fetch_values](../method/Hash/i/fetch_values.md)
- [filter](../method/Hash/i/filter.md)
- [select](../method/Hash/i/select.md)
- [filter!](../method/Hash/i/filter=21.md)
- [keep_if](../method/Hash/i/keep_if.md)
- [select!](../method/Hash/i/select=21.md)
- [flatten](../method/Hash/i/flatten.md)
- [has_key?](../method/Hash/i/has_key=3f.md)
- [include?](../method/Hash/i/include=3f.md)
- [key?](../method/Hash/i/key=3f.md)
- [member?](../method/Hash/i/member=3f.md)
- [has_value?](../method/Hash/i/has_value=3f.md)
- [value?](../method/Hash/i/value=3f.md)
- [hash](../method/Hash/i/hash.md)
- [inspect](../method/Hash/i/inspect.md)
- [to_s](../method/Hash/i/to_s.md)
- [invert](../method/Hash/i/invert.md)
- [key](../method/Hash/i/key.md)
- [keys](../method/Hash/i/keys.md)
- [length](../method/Hash/i/length.md)
- [size](../method/Hash/i/size.md)
- [merge](../method/Hash/i/merge.md)
- [merge!](../method/Hash/i/merge=21.md)
- [update](../method/Hash/i/update.md)
- [rassoc](../method/Hash/i/rassoc.md)
- [rehash](../method/Hash/i/rehash.md)
- [reject](../method/Hash/i/reject.md)
- [replace](../method/Hash/i/replace.md)
- [shift](../method/Hash/i/shift.md)
- [slice](../method/Hash/i/slice.md)
- [to_a](../method/Hash/i/to_a.md)
- [to_h](../method/Hash/i/to_h.md)
- [to_hash](../method/Hash/i/to_hash.md)
- [to_proc](../method/Hash/i/to_proc.md)
- [transform_keys](../method/Hash/i/transform_keys.md)
- [transform_keys!](../method/Hash/i/transform_keys=21.md)
- [transform_values](../method/Hash/i/transform_values.md)
- [transform_values!](../method/Hash/i/transform_values=21.md)
- [values](../method/Hash/i/values.md)
- [values_at](../method/Hash/i/values_at.md)
