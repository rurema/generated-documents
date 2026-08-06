# REXML::Document.entity_expansion_text_limit

### def REXML::Document.entity_expansion_text_limit -> Integer

実体参照の展開による文字列の増分(テキストのバイト数)の最大値を指定します。

展開によって増分値がこの値を越えると例外を発生させ、処理を中断します。

実体参照の展開処理を使った DoS 攻撃に対抗するための仕組みです。

デフォルトは 10240 (byte) です。

このメソッドは Ruby 2.1 から deprecated になりました。
[REXML::Security.entity_expansion_text_limit](../../../method/REXML=3a=3aSecurity/s/entity_expansion_text_limit.md) を使ってください。

- **SEE** [REXML::Document.entity_expansion_text_limit=](../../../method/REXML=3a=3aDocument/s/entity_expansion_text_limit=3d.md),
     <http://www.ruby-lang.org/ja/news/2013/02/22/rexml-dos-2013-02-22/>
