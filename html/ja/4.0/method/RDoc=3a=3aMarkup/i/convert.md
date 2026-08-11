# RDoc::Markup#convert

### def convert(str, formatter) -> object | ""

str で指定された文字列を formatter に変換させます。

- **param** `str` -- 変換する文字列を指定します。

- **param** `formatter` -- [RDoc::Markup::ToHtml](../../../class/RDoc=3a=3aMarkup=3a=3aToHtml.md)、`RDoc::Markup::ToLaTeX` などのインスタンスを指定します。

変換結果は formatter によって文字列や配列を返します。
