# library cgi

CGI プログラムの支援ライブラリです。

Ruby 4.0 から、cgi ライブラリは default gems から削除されました。
標準で利用できるのは cgi/escape が提供する以下のエスケープ用のメソッドだけです。

  - [CGI.escape](../method/CGI/s/escape.md), [CGI.unescape](../method/CGI/s/unescape.md)
  - [CGI.escapeHTML](../method/CGI/s/escapeHTML.md), [CGI.unescapeHTML](../method/CGI/s/unescapeHTML.md)
  - [CGI.escapeElement](../method/CGI/s/escapeElement.md), [CGI.unescapeElement](../method/CGI/s/unescapeElement.md)
  - [CGI.escapeURIComponent](../method/CGI/s/escapeURIComponent.md), [CGI.unescapeURIComponent](../method/CGI/s/unescapeURIComponent.md)

[CGI](../class/CGI.md) クラス本体(フォームの解析、クッキー、セッション、HTML の生成など)を利用するには、cgi gem をインストールしてください。

なお `require "cgi"` 自体は Ruby 4.0 でもエラーになりませんが、読み込まれるのは上記のエスケープ用のメソッドだけです。
そのため、フォームを扱うメソッドの呼び出しが [NoMethodError](../class/NoMethodError.md) になるまで問題に気付きにくい点に注意してください。
