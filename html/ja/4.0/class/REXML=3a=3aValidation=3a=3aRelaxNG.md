# class REXML::Validation::RelaxNG < Object

RELAX NG のスキーマ(XML 構文)に基づくバリデータです。

スキーマのうち、次の要素に対応しています。

`empty`, `element`, `attribute`, `text`, `optional`, `oneOrMore`, `zeroOrMore`, `group`, `value`, `interleave`, `ref`, `grammar`, `start`, `define`

`choice` と `mixed` は、一部の形だけ検証できます。`choice` は、選択肢が `value` や `attribute`、内容が `empty` の `element` のときは動きます。テキストや子要素を持つ `element` を選択肢にすると、スキーマに合う文書でも [REXML::Validation::ValidationException](../class/REXML=3a=3aValidation=3a=3aValidationException.md) が発生します。`mixed` は、テキストの後に子要素が続く形だけを受け付けます。

次の要素には対応していません。スキーマに書いても無視されます。

`data`, `param`, `include`, `externalRef`, `notAllowed`, `nsName`, `except`, `name`

無視されるため、`notAllowed` を書いても何も禁止されず、`include` と `externalRef` は参照先のファイルを読みません。`element` と `attribute` の名前は `name` 属性で指定してください。子要素の `name` は無視されます。`anyName` を書くと、スキーマの読み込み時に [NameError](../class/NameError.md) が発生します。`ref` で参照する名前は、`define` で定義しておいてください。未定義の名前を参照すると [NoMethodError](../class/NoMethodError.md) が発生します。

## Class Methods

- [new](../method/REXML=3a=3aValidation=3a=3aRelaxNG/s/new.md)

## Instance Methods

- [count](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/count.md)
- [count=](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/count=3d.md)
- [current](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/current.md)
- [current=](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/current=3d.md)
- [receive](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/receive.md)
- [references](../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/references.md)

## Constants

- [EMPTY](../method/REXML=3a=3aValidation=3a=3aRelaxNG/c/EMPTY.md)
- [INFINITY](../method/REXML=3a=3aValidation=3a=3aRelaxNG/c/INFINITY.md)
- [TEXT](../method/REXML=3a=3aValidation=3a=3aRelaxNG/c/TEXT.md)
