# REXML::Security.entity_expansion_limit

### def REXML::Security.entity_expansion_limit -> Integer

実体参照の展開回数の上限を返します。

XML 文書([REXML::Document](../../../class/REXML=3a=3aDocument.md))ごとの展開回数がこの値を越えると例外を発生させ、処理を中断します。

実体参照の展開処理を使った DoS 攻撃に対抗するための仕組みです。

デフォルトは 10000 です。

- **SEE** [REXML::Document.entity_expansion_limit](../../../method/REXML=3a=3aDocument/s/entity_expansion_limit.md)
