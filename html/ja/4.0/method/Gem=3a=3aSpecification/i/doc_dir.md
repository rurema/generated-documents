# Gem::Specification#doc_dir

### def doc_dir(type = nil) -> String
{: since="1.9.3"}

この spec のドキュメント格納ディレクトリへのフルパスを返します。

`type` を指定した場合は、そのディレクトリの下の `type` という名前のディレクトリ
(例えば `"ri"`)へのパスを返します。

- **param** `type` -- ドキュメントの種類を表す文字列を指定します。省略した場合は
           ドキュメント格納ディレクトリ自体のパスを返します。

- **SEE** [Gem::Specification#ri_dir](../../../method/Gem=3a=3aSpecification/i/ri_dir.md)
