# Kernel?.URI

### module_function def URI(uri_str) -> object

与えられた URI から該当する [URI::Generic](../../../class/URI=3a=3aGeneric.md) のサブクラスのインスタンスを生成して返します。scheme が指定されていない場合は、[URI::Generic](../../../class/URI=3a=3aGeneric.md) オブジェクトを返します。

- **param** `uri_str` -- パースしたい URI を文字列として与えます。

- **raise** `URI::InvalidURIError` -- パースに失敗した場合に発生します。

- **SEE** [URI.parse](../../../method/URI/s/parse.md)
