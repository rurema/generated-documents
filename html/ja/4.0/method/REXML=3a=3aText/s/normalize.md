# REXML::Text.normalize

### def REXML::Text.normalize(input, doctype = nil, entity_filter = nil) -> String

input を正規化(すべての entity をエスケープ)したものを返します。

- **param** `input` -- 正規化する文字列
- **param** `doctype` -- DTD([REXML::DocType](../../../class/REXML=3a=3aDocType.md) オブジェクト)
- **param** `entity_filter` -- 置換したい実体の名前の配列
