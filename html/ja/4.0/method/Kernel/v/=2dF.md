# Kernel$-F

### gvar $;  -> Regexp | String | nil
### gvar $-F -> Regexp | String | nil

[String#split](../../../method/String/i/split.md) で引数を省略した場合の区切り文字です。

Ruby 2.7からは nil 以外に変更することは非推奨になったため、
nil 以外を代入すると警告がでるようになりました。

nilを設定すると特殊な分割を行います。
詳細は [String#split](../../../method/String/i/split.md) を参照してください。

コマンドラインオプション -F を指定して Ruby を起動した場合、初期値は -F で指定した値です。
それ以外の時には初期値は nil です。

$; には任意のオブジェクトを代入できます。
ただし、[String#split](../../../method/String/i/split.md) の仕様変更を考慮すると常に正規表現を指定すべきです。

Ruby のバージョンによらず動作するプログラムを書くときは
$; に頼らないコードを書くべきです。

この変数はグローバルスコープです。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md)
