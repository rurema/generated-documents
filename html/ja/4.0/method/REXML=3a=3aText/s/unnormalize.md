# REXML::Text.unnormalize

### def REXML::Text.unnormalize(string, doctype = nil, filter = nil, illegal = nil, entity_expansion_text_limit: nil) -> String

string を非正規化(すべての entity をアンエスケープ)したものを返します。

filter でアンエスケープしない実体の実体名を文字列配列で指定します。

- **param** `string` -- 非正規化する文字列
- **param** `doctype` -- DTD([REXML::DocType](../../../class/REXML=3a=3aDocType.md) オブジェクト)
- **param** `filter` -- アンエスケープしない実体の実体名(文字列配列)
- **param** `illegal` -- 内部用。使わないでください。
- **param** `entity_expansion_text_limit` -- 実体参照の展開による文字列の増分(バイト数)の上限。
       nil を指定した場合(省略した場合)は [REXML::Security.entity_expansion_text_limit](../../../method/REXML=3a=3aSecurity/s/entity_expansion_text_limit.md) の値を使います
- **raise** `RuntimeError` -- 実体参照の展開による文字列の増分が `entity_expansion_text_limit` を越えた場合に発生します

```ruby
require 'rexml/text'
p REXML::Text.unnormalize("&amp; &foobar; &lt;") # => "& &foobar; <"
p REXML::Text.unnormalize("&lt; &gt;", nil, ["lt"]) # => "&lt; >"
```
