# Psych::SyntaxError#offset

### def offset -> Integer

エラーが生じた位置の offset をバイト数で返します。

offset とは、
[Psych::SyntaxError#line](../../../method/Psych=3a=3aSyntaxError/i/line.md), [Psych::SyntaxError#column](../../../method/Psych=3a=3aSyntaxError/i/column.md)
で指示される位置からの相対位置です。
この位置から 0 バイトの位置でエラーが発生することが多いため、このメソッドはしばしば 0 を返します。
