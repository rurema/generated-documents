# REXML::DocType#notation

### def notation(name) -> REXML::NotationDecl | nil

DTD に含まれている記法宣言 ([REXML::NotationDecl](../../../class/REXML=3a=3aNotationDecl.md)) で
name という名前を持つものを返します。

name という名前を持つ記法宣言が存在しない場合は nil を返します。

- **param** `name` -- 検索する記法名
