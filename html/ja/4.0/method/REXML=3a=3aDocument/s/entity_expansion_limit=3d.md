# REXML::Document.entity_expansion_limit=

### def REXML::Document.entity_expansion_limit=(val)

実体参照の展開回数の上限を指定します。

XML 文書([REXML::Document](../../../class/REXML=3a=3aDocument.md))ごとの展開回数がこの値を越えると例外を発生させ、処理を中断します。

デフォルトは 10000 です。

このメソッドは Ruby 2.1 から deprecated になりました。
[REXML::Security.entity_expansion_limit=](../../../method/REXML=3a=3aSecurity/s/entity_expansion_limit=3d.md) を使ってください。

- **param** `val` -- 設定する上限値(整数)
- **SEE** [REXML::Document.entity_expansion_limit](../../../method/REXML=3a=3aDocument/s/entity_expansion_limit.md)
