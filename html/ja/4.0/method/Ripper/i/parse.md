# Ripper#parse

### def parse -> nil

自身の持つ Ruby プログラムを解析します。常に nil を返します。

サブクラスでオーバライドして使用します。Ruby プログラムの解析は行いますが、そのままでは解析結果は利用できません。サブクラスでイベントハンドラの定義や本メソッドの戻り値の追加などで対応する必要があります。

- **SEE** [Ripper.parse](../../../method/Ripper/s/parse.md)
